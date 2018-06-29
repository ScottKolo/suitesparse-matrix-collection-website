Feature: Navigation Bar
  As a consumer
  So that I can navigate to various pages in the website
  I need a navigation bar with appropriate links
  
  Scenario: Navigation Bar Pages
    Given I am on the home page
    Then I should see "Index" in the navigation bar
    And I should see "About" in the navigation bar
    And I should see "Interfaces" in the navigation bar
    And I should see "Submit Matrix" in the navigation bar

  Scenario: Index Page Link
    Given I am on the home page
    When I follow "Index" in the navigation bar
    Then I should be on the home page

  Scenario: About Page Link
    Given I am on the home page
    When I follow "About" in the navigation bar
    Then I should be on the about page