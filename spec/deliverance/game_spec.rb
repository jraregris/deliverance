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
