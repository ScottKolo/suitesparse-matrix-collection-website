Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_cols  | author |
  | Boeing | airplane | 343      | 55        | John   |
  | HB     | pencil   | 34       | 435       | Paul   |
  | Bai    | long     | 44       | 44        | Greg   |
  | Gset   | asdf     | 46902    | 343       | Lass   |
  And I am on the home page

@wip
@javascript
Scenario: filter by int attribute
  When I press "Filters"
  And  I check the box to filter "rows"
  And  I fill in "40" for the input field "filter-input-rows-min"
  And  I fill in "60" for the input field "filter-input-rows-max"
  Then I should be on the index page
  And  I should see "long"
  But  I should not see "pencil"
  And  I should not see "airplane"
