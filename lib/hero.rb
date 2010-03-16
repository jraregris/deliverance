module Deliverance
  class Hero
    def initialize
      @x, @y, @speed = 0,0,0
    end

    def y
      @y
    end

    def x
      0
    end

    def speed
      @speed
    end

    def set_speed(n)
      @speed = n
    end

    def set_y(n)
      @y = n
    end
  end
end
