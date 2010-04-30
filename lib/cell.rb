# To change this template, choose Tools | Templates
# and open the template in the editor.

module Deliverance
  class Cell
    def n
      @n ||= Cell.new
    end

    def w
      @w ||= Cell.new
    end
    
    def e
      @e ||= Cell.new
    end
    
    def s
      @s ||= Cell.new
    end

    def n=(cell)
      @n = cell
      cell.s = self unless cell.s == self
    end

    def s=(cell)
      @s = cell
      cell.n = self unless cell.n == self
    end

    def w=(cell)
      @w = cell
      cell.e = self unless cell.e == self
    end

    def e=(cell)
      @e = cell
      cell.w = self unless cell.w == self
    end

    def traverse(n,w)
      cell = self
      if n > 0
        n.times{
          cell = cell.n
        }
      end
      cell
    end

    def inertia(speed)
      cell = self
      speed.n.times{ cell = cell.n }
      speed.w.times{ cell = cell.w }
      cell 
    end
  end
end
