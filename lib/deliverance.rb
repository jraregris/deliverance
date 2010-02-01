module Deliverance
  class Game
    def initialize(ui, mode=:normal)
      @ui = ui
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
