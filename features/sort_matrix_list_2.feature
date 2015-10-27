Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to sort the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | num_rows | num_rows  | author |
  | Boeing | 343      | 55        | John   |
  | HB     | 34       | 435       | Paul   |
  | Bai    | 44       | 23333     | Greg   |
  | Gset   | 46902    | 343       | Lass   |
  And I am on the home page

@javascript
Scenario: sort matrices in increasing number of rows
  When I follow "Rows"

  Then I should see "HB" before "Bai"
  Then I should see "Boeing" before "Bai"
  Then I should see "Boeing" before "Gset"
