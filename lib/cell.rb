# To change this template, choose Tools | Templates
# and open the template in the editor.

module Deliverance
  class Cell
    attr_reader :n, :ne, :e, :se, :s, :sw, :w, :nw
    
    def initialize
      
    end

    def n=(cell)
      @n = cell
      cell.s = self unless cell.s == self
    end

    def s=(cell)
      @s = cell
      cell.n = self unless cell.n == self
    end
    
  end
end
