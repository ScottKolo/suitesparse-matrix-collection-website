Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_rows  | author |
  | Boeing | airplane | 343      | 55        | John   |
  | HB     | pencil   | 34       | 435       | Paul   |
  | Bai    | long     | 44       | 23333     | Greg   |
  | Gset   | asdf     | 46902    | 343       | Lass   |
  And I am on the home page

@javascript
Scenario: filter by string attribute
  When I press "Filter by..."
  And  I check "Group"
  And  I fill in "HB" for "filter-input-group"
  And  I press "Apply Filters"
  Then I should be on the index page
  And  I should see "pencil"
  But  I should not see "asdf"
