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

@javascript
Scenario: filter by positive_definite
  When I press "Filter by..."
  And  I check "Positive Definite"
  And  I select "Yes" from "filter-input-positive_definite"
  And  I press "Apply Filters"
  Then I should be on the index page
  And  I should see "airplane"
  And  I should see "pencil"
  But  I should not see "long"
  And  I should not see "asdf"
