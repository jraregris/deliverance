module Deliverance
  class Game
    def initialize(ui)
      @ui = ui
    end

    def start
      @ui.set_papers(10)
    end

    def debug
      @ui.set_debug(true)
    end

    def empty?
      true
    end
  end
end
