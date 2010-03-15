require File.join(File.dirname(__FILE__), "/../spec_helper")

module Deliverance
  describe Game do
    context "starting up" do
      it "should set papers to 10" do
        ui = mock("ui").as_null_object
        game = Game.new(ui)
        ui.should_receive(:set_papers).with(10)
        game.start
      end

      it "should set itself as the game of its UI" do
        ui = mock("ui").as_null_object
        ui.should_receive(:set_game)
        game = Game.new(ui)
      end
    end

    context "being given an :empty" do
      it "should start in empty mode" do
        ui = mock("ui").as_null_object
        game = Game.new(ui, :empty)
        game.empty?.should be_true
      end
    end

    context "not being given an :empty" do
      it "should start in normal mode" do
        ui = mock("ui").as_null_object
        game = Game.new(ui)
        game.empty?.should be_false
      end
    end

    context "being told to pedal north" do
      it "should move the hero one square north" do
        game = Game.new(mock("ui").as_null_object)
        game.start
        
        y = game.hero.y
        
        game.pedal_north

        game.hero.y.should be(1)
      end
    end
  end
end
