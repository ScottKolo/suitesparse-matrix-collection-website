Feature: Admin Page
  As an administrator
  So that I can edit the matrix data in the database
  I want an administrative view
Background: matrices have been added to database

  Given the following matrices exist:
  | group  | num_rows | num_rows  | author | pending |
  | Boeing | 343      | 55        | John   | true    |
  | HB     | 34       | 435       | Paul   | true    |
  | Bai    | 44       | 23333     | Greg   | false   |
  | Gset   | 46902    | 343       | Lass   | false   |
  @wip
  Scenario: Not showing pending matrices
    Given I am on the home page
    And I am not the admin
    Then I should not see pending matrices
