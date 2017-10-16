Feature: Show Group Info
  As a user
  So that I can find out more about a specific group of matrices
  I want to see information about a group

  Scenario: Click on Group
    Given the following groups exist
    | name        | notes                  |
    | Boeing      | An aerospace company   |
    | First Order | Remnants of the Empire |
    | Starfleet   | A peacekeeping armada  |
    And the following matrices exist
    | group       | name     |
    | Boeing      | airplane |
    | First Order | Kylo Ren |
    | Starfleet   | Spock    |
    And I am on page number 1 of the index page with 20 per page
    And I follow "Starfleet"
    Then I should be on the group page for group Starfleet
    And I should see "A peacekeeping armada"
    