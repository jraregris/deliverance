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
        game.hero = hero = mock("hero").as_null_object
        
        origin = Cell.new

        hero.should_receive(:cell).twice.and_return(origin)
        game.origo.should be(origin)

        target = Cell.new
        origin.n = target

        hero.should_receive(:cell=).with(target)
        game.pedal(:north)
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

    context "getting asked for origo" do
      it "should return the cell of hero" do
        ui = mock("ui").as_null_object
        hero = mock("hero").as_null_object
        
        game = Game.new(ui)
        game.hero = hero
        c = Cell.new
        hero.should_receive(:cell).twice.and_return(c)
        origo = game.origo
        origo.should be_a(Cell)
        origo.should be(game.hero.cell)
      end
    end
  end
end