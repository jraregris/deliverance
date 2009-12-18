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
  end
end
