require File.join(File.dirname(__FILE__), "/../spec_helper")

module Deliverance
  describe TextUI do
    context "being told that there are 10 papers" do
      it "should send a message that there are 10 papers" do
        io = mock("io").as_null_object
        ui = TextUI.new(io)

        io.should_receive(:puts).with("Papers: 10")
        ui.set_papers(10)
      end
    end

    context "being told to pedal north" do
      it "should tell the game to pedal north" do
        io = mock("io").as_null_object
        ui = TextUI.new(io)
        game = mock("game").as_null_object
        ui.set_game(game)

        game.should_receive(:pedal_north)
        ui.pedal_north
      end
    end

    context "setting game" do
      it "should set the game" do
        ui = TextUI.new(mock("io").as_null_object)
        game = mock("game").as_null_object
        ui.set_game(game)

        ui.game().should be(game)
      end
    end
    
    context "being told that debug mode is on" do
      it "should send a message that debug mode is on" do
        io = mock("io").as_null_object
        ui = TextUI.new(io)
        io.should_receive(:puts).with("Debug: true")
        ui.set_debug(true)
      end
    end
  end
end
