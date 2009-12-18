module Deliverance
  class TextUI
    def initialize(io)
      @io = io
    end
    def set_papers(i)
      @io.puts "Papers: " + i.to_s
    end
  end
end
