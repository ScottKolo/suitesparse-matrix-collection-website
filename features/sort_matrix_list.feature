Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to sort the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_rows  | author |
  | Boeing | dingbat  | 343      | 55        | John   |
  | HB     | banana   | 34       | 435       | Paul   |
  | Bai    | canoe    | 44       | 23333     | Greg   |
  | Gset   | airplane | 46902    | 343       | Lass   |
  And I am on the home page

@javascript
Scenario: sort names alphabetically
  When I follow "Name"

  Then I should see "airplane" before "banana"
  Then I should see "banana" before "canoe"
  Then I should see "canoe" before "dingbat"
