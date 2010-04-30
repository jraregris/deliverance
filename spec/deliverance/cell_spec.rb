# To change this template, choose Tools | Templates
# and open the template in the editor.

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module Deliverance
  describe Cell do
    before(:each) do
      @cell = Cell.new
    end

    context "traversing" do
      it "should return cell at the end of the chain" do
        start = Cell.new
        through = Cell.new
        target = Cell.new

        start.n = through
        through.n = target

        start.n.should be(through)
        start.n.n.should be(target)
        start.n.n.s.s.should be(start)

      end
    end
  end
end