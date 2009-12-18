Feature: Player starts game
  As a player
  I want to start a game
  So that I can start playing
  Scenario: start game
    Given I am not yet playing
    When I start a new game
    Then I should have 10 papers
    And I should have 0 points
    And I should have a speed of 0 spt 
