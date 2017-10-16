Feature: Group Listing
  As a user
  So that I can view the groups of matrices in the collection
  I want to see the group listing
  
  Scenario: Group Index
    Given there are 30 groups
    And I am on the groups page
    Then I should see 2 pagination bars
    And I should see 2 links to the next page of pagination
    And I should see 2 disabled links to the previous page of pagination