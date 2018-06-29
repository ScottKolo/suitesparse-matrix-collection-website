Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | positive_definite |
  | Boeing | airplane | yes               |
  | HB     | pencil   | yes               |
  | Bai    | long     | no                |
  | Gset   | asdf     | no                |
  And I am on the home page
  And I follow "Reset Filters"
  And I wait 2 seconds

@javascript
Scenario: filter by positive_definite
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Yes" from "filter-input-positive_definite"
  Then I should see "airplane"
    And I should see "pencil"
  But I should not see "long"
    And I should not see "asdf"
