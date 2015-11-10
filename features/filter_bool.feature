Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | symmetric |
  | Boeing | airplane | true      |
  | HB     | pencil   | true      |
  | Bai    | long     | false     |
  | Gset   | asdf     | false     |
  And I am on the home page

@javascript
Scenario: filter by symmetric
  When I press "Filter by..."
  And  I check "Symmetric"
  And  I check "filter-input-symmetric"
  And  I press "Apply Filters"
  Then I should be on the index page
  And  I should see "airplane"
  And  I should see "pencil"
  But  I should not see "long"
  And  I should not see "asdf"
