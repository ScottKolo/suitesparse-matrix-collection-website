Feature: Page Titles
  As a consumer
  So that I can better know where I am in the website
  I need a descriptive title for each page
  
  Scenario: Home Page Title
    Given I am on the home page
    Then the page title should be "SuiteSparse Matrix Collection"

  Scenario: Show Page Title
    Given the following matrix exist:
      | group       | name          |
      | GroupName_1 | Test_matrix_1 |
    Given I am on the show page for a matrix with name "Test_matrix_1" and group "GroupName_1"
    Then the page title should be "GroupName_1/Test_matrix_1 | SuiteSparse Matrix Collection"

  Scenario: About Page Title
    Given I am on the about page
    Then the page title should be "About | SuiteSparse Matrix Collection"

  Scenario: Not Found Page Title
    Given I am on the Not Found page
    Then the page title should be "Not Found | SuiteSparse Matrix Collection"