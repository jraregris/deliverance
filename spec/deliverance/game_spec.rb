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
      it "should move the hero 1 square north" do
        game = Game.new(mock("ui").as_null_object)
        game.start
        
        game.hero.y.should == 0
        game.hero.speed.should == 0

        game.pedal_north
      
        game.hero.y.should == 1
        game.hero.speed.should == 1

        game.pedal_north

        game.hero.y.should == 3
        game.hero.speed.should == 2
      end
      
    end

    context "setting game to debug-debug" do
      it "should set game to debug-mode" do
        ui = mock("ui").as_null_object
        game = Game.new(ui)
        ui.should_receive(:set_debug).with(true)
        game.debug
      end
      it "should be empty" do
        ui = mock("ui").as_null_object
        game = Game.new(ui)
        game.debug
        game.empty?.should be(true)
      end
    end
  end
end
