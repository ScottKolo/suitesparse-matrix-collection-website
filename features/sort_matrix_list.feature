Feature: display list of matrices filtered by attributes
 
  As a consumer
  So that I can better browse the collection
  I want to sort the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group                   | num_rows | num_rows  | nonzeros  | symmetric | date | author | editor | notes |
  | Boeing                  | 343      | 55        |           |           |      | John   |        |       |
  | HB                      | 34       | 435       |           |           |      | Paul   |        |       |
  | Bai                     | 44       | 23333     |           |           |      | Greg   |        |       |
  | Gset                    | 46902    | 343       |           |           |      | Lass   |        |       |

  And I am on the home page

Scenario: sort groups alphabetically
  When I follow "Group"
  And I am on the home page

  Then I should see "Bai" before "Boeing"
  Then I should see "Boeing" before "HB"
  Then I should see "Gset" before "HB"

Scenario: sort matrices in increasing number of rows
  When I follow "Num Rows"
  And I am on the home page

  Then I should see "HB" before "Bai"
  Then I should see "Boeing" before "Bai"
  Then I should see "Boeing" before "Gset"
