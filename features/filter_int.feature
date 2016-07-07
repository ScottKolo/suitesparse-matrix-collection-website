Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group       | name         | num_rows | num_cols  | author |
  | Boeing      | airplane     | 343      | 55        | John   |
  | HB          | pencil       | 60       | 435       | Paul   |
  | Rubber Soul | Drive My Car | 40       | 435       | Ringo  |
  | Bai         | long         | 44       | 44        | Greg   |
  | Gset        | asdf         | 46902    | 343       | Lass   |

  @javascript
  Scenario: filter by int attribute
    Given I am on the home page
    And I follow "Reset filters"
    When I filter matrices between "40" and "60" "rows"
    And  I should see "long"
    And  I should see "pencil"
    And  I should see "Drive My Car"
    But  I should not see "asdf"
    And  I should not see "airplane"
