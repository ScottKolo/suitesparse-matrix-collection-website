Feature: Index Pagination
  As a consumer
  So that I can view the collection listing in a reasonable time
  I want to see the matrix listing paginated
  
  Scenario: Front Page
    Given there are 50 matrices
    And I am on page number 1 of the index page with 20 per page
    Then I should see 2 pagination bars
    And I should see 2 links to the next page of pagination
    And I should see 2 disabled links to the previous page of pagination

  Scenario: Third Page
    Given there are 100 matrices
    And I am on page number 3 of the index page with 20 per page
    Then I should see 2 pagination bars
    And I should see 2 links to the previous page of pagination
    And I should see 2 links to the next page of pagination

  Scenario: Last Page
    Given there are 100 matrices
    And I am on page number 5 of the index page with 20 per page
    Then I should see 2 pagination bars
    And I should see 2 disabled links to the next page of pagination
    And I should see 2 links to the previous page of pagination

  Scenario: Display All
    Given there are 100 matrices
    And I am on page number 1 of the index page with All per page
    Then I should not see pagination