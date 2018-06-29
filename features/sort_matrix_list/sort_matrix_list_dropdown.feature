# File: features/sort_matrix_list/sort_matrix_list_dropdown.feature
#
# Cucumber tests for sorting the matrix index using the dropdown

Feature: display list of matrices sorted by attributes

  As a consumer
  So that I can better browse the collection
  I want to sort the collection by matrix properties by using the dropdown

Background: matrices have been added to database

  Given the following matrices exist:
  | group                | name                 | num_rows | num_cols | author        |
  | Magical Mystery Tour | All You Need Is Love | 1        | 357      | J. Lennon     |
  | Hey Jude             | Can't Buy Me Love    | 5000     | 211      | P. McCartney  |
  | Abbey Road           | Come Together        | 100      | 418      | J. Lennon     |
  | Let It Be            | For You Blue         | 1687642  | 232      | G. Harrison   |
    And I am on the home page
    And I follow "Reset Filters"

@javascript
Scenario: sort matrices by name using dropdown
  When I select "Name (A to Z)" from "filterrific[sorted_by]"
  Then I should see "All You Need Is Love" before "Can't Buy Me Love"
    And I should see "Can't Buy Me Love" before "Come Together"
    And I should see "Come Together" before "For You Blue"

@javascript
Scenario: reverse sort matrices by name using dropdown
  When I select "Name (Z to A)" from "filterrific[sorted_by]"
  Then I should see "For You Blue" before "Come Together"
    And I should see "Come Together" before "Can't Buy Me Love"
    And I should see "Can't Buy Me Love" before "All You Need Is Love"

@javascript
Scenario: sort matrices in increasing number of rows using dropdown
  When I select "Rows (Low to High)" from "filterrific[sorted_by]"
  Then I should see "All You Need Is Love" before "Come Together"
    And I should see "Come Together" before "Can't Buy Me Love"
    And I should see "Can't Buy Me Love" before "For You Blue"

@javascript
Scenario: sort matrices in decreasing number of rows using dropdown
  When I select "Rows (High to Low)" from "filterrific[sorted_by]"
  Then I should see "For You Blue" before "Can't Buy Me Love"
    And I should see "Can't Buy Me Love" before "Come Together"
    And I should see "Come Together" before "All You Need Is Love"

@javascript
Scenario: sort matrices in increasing number of columns using dropdown
  When I select "Columns (Low to High)" from "filterrific[sorted_by]"
  Then I should see "Can't Buy Me Love" before "For You Blue"
    And I should see "For You Blue" before "All You Need Is Love"
    And I should see "All You Need Is Love" before "Come Together"

@javascript
Scenario: sort matrices in decreasing number of columns using dropdown
  When I select "Columns (High to Low)" from "filterrific[sorted_by]"
  Then I should see "Come Together" before "All You Need Is Love"
    And I should see "All You Need Is Love" before "For You Blue"
    And I should see "For You Blue" before "Can't Buy Me Love"