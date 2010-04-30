module Deliverance
  class Speed
    def w
      @w ||= 0
    end
    def n
      @n ||= 0
    end

    def accelerate(*dirs)
      @n = n + 1 if dirs.include? :north
      @w = w + 1 if dirs.include? :west
      @n = n - 1 if dirs.include? :south
      @w = w - 1 if dirs.include? :east
    end
  end
end