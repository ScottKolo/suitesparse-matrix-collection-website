Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_cols  | author |
  | Boeing | airplane | 343      | 55        | John   |
  | HB     | pencil   | 34       | 435       | Paul   |
  | Bai    | long     | 44       | 23333     | Greg   |
  | Gset   | asdf     | 46902    | 343       | Lass   |
    And I am on the home page
    And I follow "Reset Filters"
    And I wait 2 seconds

@javascript
Scenario: filter by group name
  When I press "Filters"
    And I check "Metadata"
    And I fill in "HB" for "filter-input-group"
    And I wait 2 seconds
  Then I should see "pencil"
  But I should not see "asdf"
    And I should not see "airplane"
    And I should not see "long"

@javascript
Scenario: filter by matrix name
  When I press "Filters"
    And I check "Metadata"
    And I fill in "long" for "filter-input-name"
    And I wait 2 seconds
  Then I should see "long"
  But I should not see "asdf"
    And I should not see "airplane"
    And I should not see "pencil"