require 'cell'

module Deliverance

  # The Hero class. This represents the player.
  class Hero
    def speed
      @speed ||= Speed.new
    end

    def set_speed(n)
      @speed = n
    end

    def set_y(n)
      @y = n
    end

    def cell
      @cell ||= Cell.new
    end

    def cell=(new_cell)
      @cell = new_cell
    end
  end
end
