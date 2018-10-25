Feature: display list of matrices filtered by year added to the collection

  As a user
  So that I can better browse the collection
  I want to filter the collection by date

Background: matrices have been added to database

  Given the following matrices exist:
  | group                | name                 | date |
  | Magical Mystery Tour | All You Need Is Love | 1980 |
  | Hey Jude             | Can't Buy Me Love    | 1990 |
  | Abbey Road           | Come Together        | 2000 |
  | Let It Be            | For You Blue         | 2010 |
  | Beatles For Sale     | Eight Days A Week    | 2020 |

Scenario: filter by number of strongly connected components
  Given I am on the home page
    And I follow "Reset Filters"
  When I filter matrices between "1960" and "1995" "year"
  Then I should see "All You Need Is Love"
    And I should see "Can't Buy Me Love"
  But I should not see "Come Together"
    And I should not see "For You Blue"
    And I should not see "Eight Days A Week"