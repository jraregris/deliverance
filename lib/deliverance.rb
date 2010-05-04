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

    def hero=(h)
      @hero = h
    end

    def start
      @ui.set_papers(10)
    end

    def pedal(*dirs)
      c = origo
      c = c.inertia(hero.speed)

      c = c.n if dirs.include? :north
      c = c.w if dirs.include? :west
      c = c.e if dirs.include? :east
      c = c.s if dirs.include? :south
      
      hero.cell = c
      hero.speed.accelerate(*dirs)
    end

    def debug
      @ui.set_debug(true)
      @empty = true
    end

    def origo
      hero.cell
    end
  end
end
