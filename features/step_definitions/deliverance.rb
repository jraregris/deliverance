Given /^I am not yet playing$/ do
end

When /^I start a new game$/ do
  @ui = Deliverance::TextUI.new
  @game = Deliverance::Game.new(@ui)
end

Then /^I should have (\d+) papers$/ do |papers|
  @game.papers.should equal(papers)
end

Then /^I should have (\d+) points$/ do |points|
  @game.points.should equal(points)
end

Then /^I should have a speed of (\d+) spt$/ do |speed|
  @game.speed.should equal(speed)
end
