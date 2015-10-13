Feature: Navigation Bar
  As a consumer
  So that I can navigate to various pages in the website
  I need a navigation bar with appropriate links
  
  Scenario: Navigation Bar Pages
    When I am on the home page
    Then I should see "About"
    And I should see "Index"

  Scenario: Index Page Link
    Given I am on the home page
    When I follow "Index"
    Then I should be on the home page

  Scenario: About Page Link
    Given I am on the home page
    When I follow "About"
    Then I should be on the about page