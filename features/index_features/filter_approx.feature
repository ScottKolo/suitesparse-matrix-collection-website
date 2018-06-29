Feature: display list of matrices approximately filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to approximately filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group                | name                 | num_rows | num_cols | author                  | 
  | Magical Mystery Tour | All You Need Is Love | 1        | 357      | J. Lennon               |
  | Hey Jude             | Can't Buy Me Love    | 5000     | 211      | P. McCartney            |
  | Abbey Road           | Come Together        | 100      | 418      | J. Lennon               |
  | Let It Be            | For You Blue         | 1687642  | 232      | G. Harrison             |
  | Beatles For Sale     | Eight Days A Week    | 1964     | 244      | J. Lennon, P. McCartney |
  And I am on the home page

@javascript
Scenario: filter by string attribute
  Given I am on the home page
    And I follow "Reset Filters"
  When I fill in "You" for the input field "filterrific_search_query"
  Then I should see "All You Need Is Love"
    And I should see "For You Blue"
  But I should not see "Can't Buy Me Love"
    And I should not see "Come Together"
    And I should not see "Eight Days A Week"

@javascript
Scenario: filter by string attribute with wildcards
  Given I am on the home page
    And I follow "Reset Filters"
  When I fill in "a*love" for the input field "filterrific_search_query"
  Then I should see "All You Need Is Love"
    And I should see "Can't Buy Me Love"
  But I should not see "For You Blue"
    And I should not see "Come Together"
    And I should not see "Eight Days A Week"