Feature: display list of matrices approximately filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to approximately filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_cols  | author |
  | Boeing | airplane | 343      | 55        | John   |
  | HB     | pencil   | 34       | 435       | Paul   |
  | Bai    | long     | 44       | 23333     | Greg   |
  | Gset   | asdf     | 46902    | 343       | Lass   |
  And I am on the home page

@wip
@javascript
Scenario: filter by string attribute
  When I press "Filters"
  And  I check "Group"
  And  I fill in "boe" for "filter-input-group"
  And  I press "Apply Filters"
  Then I should be on the index page
  And  I should see "Boeing"
  And  I should see "airplane"
  But  I should not see "Bai"
  But  I should not see "long"
