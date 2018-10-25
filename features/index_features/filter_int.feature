Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | matrix_id | group                | name                 | num_rows | num_cols | author                  |
  | 1         | Magical Mystery Tour | All You Need Is Love | 1        | 357      | J. Lennon               |
  | 2         | Hey Jude             | Can't Buy Me Love    | 5000     | 211      | P. McCartney            |
  | 3         | Abbey Road           | Come Together        | 100      | 418      | J. Lennon               |
  | 4         | Let It Be            | For You Blue         | 1687642  | 232      | G. Harrison             |
  | 5         | Beatles For Sale     | Eight Days A Week    | 1964     | 244      | J. Lennon, P. McCartney |
    And I am on the home page
    And I follow "Reset Filters"

Scenario: filter by rows
  When I filter matrices between "100" and "5000" "rows"
    And I should see "Can't Buy Me Love"
    And I should see "Come Together"
    And I should see "Eight Days A Week"
  But I should not see "All You Need Is Love"
    And I should not see "For You Blue"

Scenario: filter by columns
  When I filter matrices between "232" and "357" "cols"
    And I should see "For You Blue"
    And I should see "Eight Days A Week"
    And I should see "All You Need Is Love"
  But I should not see "Come Together"
    And I should not see "Can't Buy Me Love"

Scenario: filter by matrix ID
  When I filter matrices between "3" and "4" "id"
  Then I should see "Abbey Road"
   And I should see "Let It Be"
  But I should not see "Beatles For Sale"
   And I should not see "Magical Mystery Tour"
   And I should not see "Hey Jude"