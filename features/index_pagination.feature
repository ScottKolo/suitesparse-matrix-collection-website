Feature: Index Pagination
  As a consumer
  So that I can view the collection listing in a reasonable time
  I want to see the matrix listing paginated
  
  Scenario: Front Page
    Given there are 50 matrices
    And I am on page number 1 of index
    Then I should see pagination
    And I should see a link to the next page of pagination
    And I should see a disabled link to the previous page of pagination

  Scenario: Third Page
    Given there are 50 matrices
    And I am on page number 3 of index
    Then I should see pagination
    And I should see a link to the previous page of pagination
    And I should see a link to the next page of pagination

  Scenario: Last Page
    Given there are 50 matrices
    And I am on page number 5 of index
    Then I should see pagination
    And I should see a disabled link to the next page of pagination
    And I should see a link to the previous page of pagination