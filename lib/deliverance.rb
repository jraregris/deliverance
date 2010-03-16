require 'hero'

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

    def hero
      @hero ||= Hero.new
    end

    def start
      @ui.set_papers(10)
    end

    def pedal_north
      hero.set_y(hero.y + 1)
    end

    def debug
      @ui.set_debug(true)
    end

  end
end
