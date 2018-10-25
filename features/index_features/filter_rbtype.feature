Feature: display list of matrices filtered by Rutherford-Boeing type

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by Rutherford-Boeing type

Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | rb_type |
  | Boeing | airplane | real    |
  | HB     | pencil   | binary  |
  | Bai    | long     | integer |
  | Gset   | asdf     | complex |
  And I am on the home page
  And I follow "Reset Filters"
  And I wait 2 seconds

@javascript
Scenario: filter for real matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Real" from "filter-input-rb_type"
  Then I should see "airplane"
  But I should not see "long"
    And I should not see "pencil"
    And I should not see "asdf"

@javascript
Scenario: filter for complex matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Complex" from "filter-input-rb_type"
  Then I should see "asdf"
  But I should not see "long"
    And I should not see "pencil"
    And I should not see "airplane"

@javascript
Scenario: filter for binary matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Binary" from "filter-input-rb_type"
  Then I should see "pencil"
  But I should not see "long"
    And I should not see "airplane"
    And I should not see "asdf"

@javascript
Scenario: filter for integer matrices
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Integer" from "filter-input-rb_type"
  Then I should see "long"
  But I should not see "airplane"
    And I should not see "pencil"
    And I should not see "asdf"

@javascript
Scenario: filter for any matrix type
  When I press "Filters"
    And I check "Structure and Entry Types"
    And I select "Any" from "filter-input-rb_type"
  Then I should see "airplane"
    And I should see "pencil"
    And I should see "long"
    And I should see "asdf"