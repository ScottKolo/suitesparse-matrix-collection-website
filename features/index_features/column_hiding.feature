Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to hide certain columns

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | num_rows | num_cols  | author |
  | Boeing | 343      | 55        | John   |
  | HB     | 34       | 435       | Paul   |
  | Bai    | 44       | 23333     | Greg   |
  | Gset   | 46902    | 343       | Lass   |
  And I am on the home page

@wip
@javascript
Scenario: hide a column
  Given I am not an admin
  When I press "Hide columns..."
  Then I check "Rows"
  When I press "Hide columns..."
  Then I should not see "Rows"
