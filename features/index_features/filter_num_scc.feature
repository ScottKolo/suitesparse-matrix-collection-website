Feature: display list of matrices filtered by number of strongly connected components

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group                | name                 | num_strongly_connected_components |
  | Magical Mystery Tour | All You Need Is Love | 1                                 |
  | Hey Jude             | Can't Buy Me Love    | 1000                              |
  | Abbey Road           | Come Together        | 1000000                           |
  | Let It Be            | For You Blue         | 10                                |
  | Beatles For Sale     | Eight Days A Week    | 100                               |

Scenario: filter by number of strongly connected components
  Given I am on the home page
    And I follow "Reset Filters"
  When I filter matrices between "10" and "1000" "strongly_connected_components"
    And I should see "Can't Buy Me Love"
    And I should see "For You Blue"
    And I should see "Eight Days A Week"
  But I should not see "All You Need Is Love"
    And I should not see "Come Together"