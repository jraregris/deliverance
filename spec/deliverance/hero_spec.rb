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
  end
end
