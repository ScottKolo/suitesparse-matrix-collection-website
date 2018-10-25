Feature: display list of matrices filtered by Rutherford-Boeing type

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by Rutherford-Boeing type

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_cols | structure      |
  | Boeing | airplane | 50       | 50       | symmetric      |
  | HB     | pencil   | 60       | 60       | unsymmetric    |
  | Bai    | long     | 70       | 30       | rectangular    |
  | Gset   | asdf     | 90       | 90       | hermitian      |
  | HB     | test     | 10       | 10       | skew-symmetric |
  And I am on the home page
  And I follow "Reset Filters"
  And I wait 2 seconds

@javascript
Scenario: filter for square matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Square" from "filter-input-structure"
  Then I should see "airplane"
    And I should see "pencil"
    And I should see "asdf"
    And I should see "test"
  But I should not see "long"

@javascript
Scenario: filter for rectangular matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Rectangular" from "filter-input-structure"
  Then I should see "long"
  But I should not see "airplane"
    And I should not see "pencil"
    And I should not see "asdf"
    And I should not see "test"

@javascript
Scenario: filter for any matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Any" from "filter-input-structure"
  Then I should see "airplane"
    And I should see "long"
    And I should see "pencil"
    And I should see "asdf"
    And I should see "test"

@javascript
Scenario: filter for unsymmetric matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Unsymmetric" from "filter-input-structure"
  Then I should see "pencil"
  But I should not see "airplane"
    And I should not see "long"
    And I should not see "test"
    And I should not see "asdf"

@javascript
Scenario: filter for symmetric matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Symmetric" from "filter-input-structure"
  Then I should see "airplane"
  But I should not see "pencil"
    And I should not see "long"
    And I should not see "test"
    And I should not see "asdf"

@javascript
Scenario: filter for Hermitian matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Hermitian" from "filter-input-structure"
  Then I should see "asdf"
  But I should not see "pencil"
    And I should not see "long"
    And I should not see "airplane"
    And I should not see "test"

@javascript
Scenario: filter for skew-symmetric matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Skew-Symmetric" from "filter-input-structure"
  Then I should see "test"
  But I should not see "pencil"
    And I should not see "long"
    And I should not see "airplane"
    And I should not see "asdf"