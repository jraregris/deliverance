Given /^I am not yet playing$/ do
end

Given /^I start a game in debug-mode$/ do
  @ui = Deliverance::TextUI.new(StringIO.new)
  @game = Deliverance::Game.new(@ui)
  @game.debug
  @game.start
end

When /^I start a new game$/ do
  @ui = Deliverance::TextUI.new(StringIO.new)
  @game = Deliverance::Game.new(@ui)
end

Then /^I should have (\d+) papers$/ do |papers|
  @ui.papers.should equal(papers.to_i)
end

Then /^I should have (\d+) points$/ do |points|
  @ui.points.should equal(points.to_i)
end

Then /^I should have a speed of (\d+) spt$/ do |speed|
  @game.hero.speed.should == speed.to_i
end

Given /^I have started an empty game$/ do
  @ui = Deliverance::TextUI.new(StringIO.new)
  @game = Deliverance::Game.new(@ui, :empty)
end

When /^I pedal north$/ do
  @ui.pedal_north
end

Then /^my relative position is (\d+),(\d+)$/ do |x,y|
  @game.hero.x.should == x.to_i
  @game.hero.y.should == y.to_i
end

Then /^the map should be empty$/ do
  @game.empty?.should equal(true)
end
