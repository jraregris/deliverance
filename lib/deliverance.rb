module Deliverance
  class Game
    def initialize(ui, mode=:normal)
      @ui = ui
      @ui.set_game(self)

      @empty = mode == :empty
    end

    def empty?
      @empty
    end

    def start
      @ui.set_papers(10)
    end
  end
end
