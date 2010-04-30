require File.join(File.dirname(__FILE__), "/../spec_helper")

module Deliverance

  context "making a new speed" do
    it "should set h and v to 0" do
      @s = Speed.new
      @s.w.should be(0)
      @s.n.should be(0)
    end
  end
  
  context "being told to accelerate north" do
    it "should have w:0 and n:1" do
      @s = Speed.new
      @s.accelerate(:north)
      @s.w.should be(0)
      @s.n.should be(1)
    end
  end

  context "being told to accelerate west" do
    it "should have w:1 and n:0" do
      @s = Speed.new
      @s.accelerate(:west)
      @s.w.should be(1)
      @s.n.should be(0)
    end
  end

  context "being told to accelerate south" do
    it "should have w:0 and n:-1" do
      @s = Speed.new
      @s.accelerate(:south)
      @s.w.should be(0)
      @s.n.should be(-1)
    end
  end

  context "being told to accelerate east" do
    it "should have w:-1 and n:0" do
      @s = Speed.new
      @s.accelerate(:east)
      @s.w.should be(-1)
      @s.n.should be(0)
    end
  end

  context "being told to accelerate northeast" do
    it "should have w:-1 and n:1" do
      @s = Speed.new
      @s.accelerate(:east, :north)
      @s.w.should be(-1)
      @s.n.should be(1)
    end
  end
end