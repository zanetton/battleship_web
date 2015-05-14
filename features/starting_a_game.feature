Feature: Starting a game
  As a player
  I want to start a game of battleships
  In order to blow up some ships

Scenario: Entering my name
  Given I am on the homepage
  And I enter my name, "Juan"
  When I press submit
  Then I see a grid
  And I see my name, "Juan"

Scenario: Failing to register
    Given I am on the homepage
    When I fill in "name" with empty space ""
    And I press submit
    Then I should see "What's your name?"
