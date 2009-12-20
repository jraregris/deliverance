module Deliverance
  class TextUI
    def initialize(io)
      @io = io
    end
    def set_papers(i)
      @io.puts "Papers: " + i.to_s
    end

    def papers
      return 10
    end

    def points
      0
    end

    def speed
      0
    end
  end
end
