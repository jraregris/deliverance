Feature: Biking
  Scenario: Accelerating
    Given I start a game in debug-mode
    When I pedal north
    Then my relative position is 1,0
    And I should have a speed of 1 spt
    When I pedal north
    Then my relative position is 3,0
    And I should have a speed of 2 spt
