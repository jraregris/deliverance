module Deliverance
  class TextUI
    def initialize(io)
      @io = io
    end

    def set_debug(debug)
      @io.puts "Debug: " + debug.to_s
    end

    def set_papers(i)
      @io.puts "Papers: " + i.to_s
    end

    def papers
      10
    end

    def points
      0
    end

    def speed
      0
    end

    def set_game(g)
      @game = g
    end

    def game
      @game
    end

    def pedal_north
      @game.pedal_north
    end
  end
end
