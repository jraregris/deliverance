# To change this template, choose Tools | Templates
# and open the template in the editor.

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module Deliverance
  describe Hero do
    before(:each) do
      @hero = Hero.new
    end

    context "being just created" do
      it "should have a speed that is a Speed object" do
        @hero.speed.should be_a_kind_of(Speed)
      end
    end

    context "being told to set it's cell" do
      it "should set it's cell to that cell" do
        oldcell = @hero.cell
        newcell = Cell.new
        @hero.cell = newcell
        @hero.cell.should be(newcell)
        @hero.cell.should_not be(oldcell)
      end
    end
  end
end
