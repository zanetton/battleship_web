Feature: Placing a ship
  As an impatient player
  so I can begin the game
  I want all my ships already placed

Scenario: Ships are on the board
  Given I am on the homepage
  And I enter my name, "Bobby"
  When I press submit
  Then I am on the game page
  Then I press begin
  And all my ships are placed
