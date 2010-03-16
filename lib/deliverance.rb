require 'hero'

module Deliverance

  # The main Game class that runs everything.
  # Author:: Oddmund Strømme
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
      h = hero
      speed = h.speed
      h.set_y(h.y + speed + 1)
      h.set_speed(speed + 1)
    end

    def debug
      @ui.set_debug(true)
      @empty = true
    end

  end
end
