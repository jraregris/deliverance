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
      
      context "traverse(1,0)" do
        it "should return the cell to the north" do
          target = Cell.new
          @cell.n = target
          @cell.traverse(1,0).should be(target)
        end
      end

      context "asking for a cell that's not there" do
        it "should make a new one" do
          @cell.n.should_not be(nil)          
        end
      end

      context "inertia" do
        it "should return the new cell according to the provided speed" do
          @cell.n = target = Cell.new
          speed = mock("speed").as_null_object
          
          speed.should_receive(:n).and_return(1)
          speed.should_receive(:w).and_return(0)
          
          @cell.inertia(speed).should be(target)       
        end
      end
    end
  end
end