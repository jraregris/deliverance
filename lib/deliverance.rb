module Deliverance
  class Game
    def initialize(ui)
      @ui = ui
    end
    def start
      @ui.set_papers(10)
    end
  end
end
