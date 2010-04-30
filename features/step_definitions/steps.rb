Given /^I am not yet playing$/ do
end

Given /^I start a game in debug-mode$/ do
  @ui = Deliverance::TextUI.new(StringIO.new)
  @game = Deliverance::Game.new(@ui)
  @game.debug
  @game.start
  @origin = @game.origo
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

Then /^I should have a speed of (\d+),(\d+)$/ do |n,w|
  @game.hero.speed.n.should == n.to_i
  @game.hero.speed.w.should == w.to_i
end

Given /^I have started an empty game$/ do
  @ui = Deliverance::TextUI.new(StringIO.new)
  @game = Deliverance::Game.new(@ui, :empty)
end

When /^I pedal north$/ do
  @ui.pedal(:north)
end

Then /^my relative position is (\d+),(\d+)$/ do |n,w|
  @game.origo.should be(@origin.traverse(n.to_i,w.to_i))
end

Then /^the map should be empty$/ do
  @game.empty?.should equal(true)
end
