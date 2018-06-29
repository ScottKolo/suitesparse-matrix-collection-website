Feature: display list of matrices filtered by attributes

  As a consumer
  So that I can better browse the collection
  I want to filter the collection by matrix properties

Background: matrices have been added to database

  Given the following matrices exist:
  | group                | name                 | positive_definite |
  | Magical Mystery Tour | All You Need Is Love | yes               |
  | Hey Jude             | Can't Buy Me Love    | yes               |
  | Abbey Road           | Come Together        | yes               |
  | Let It Be            | For You Blue         | no                |
  | Beatles For Sale     | Eight Days A Week    | no                |
    And I am on the home page
    And I follow "Reset Filters"

Scenario: filter by positive definiteness
  When I filter matrices by "positive_definite" "Yes"
  Then I should see "All You Need Is Love"
    And I should see "Can't Buy Me Love"
    And I should see "Come Together"
  But I should not see "For You Blue"
    And I should not see "Eight Days A Week"

Scenario: filter by no positive definiteness
  When I filter matrices by "positive_definite" "No"
  Then I should not see "All You Need Is Love"
    And I should not see "Can't Buy Me Love"
    And I should not see "Come Together"
  But I should see "For You Blue"
    And I should see "Eight Days A Week"

Scenario: filter by any positive definiteness
  When I filter matrices by "positive_definite" "Any"
  Then I should see "All You Need Is Love"
    And I should see "Can't Buy Me Love"
    And I should see "Come Together"
    And I should see "For You Blue"
    And I should see "Eight Days A Week"