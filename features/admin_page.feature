Feature: Admin Page
  As an administrator
  So that I can edit the matrix data in the database
  I want an administrative view
Background: matrices have been added to database

  Given the following matrices exist:
  | group  | num_rows | num_rows  | author | pending |
  | Test1  | 343      | 55        | John   | true    |
  | Test2  | 34       | 435       | Paul   | true    |
  | Bai    | 44       | 23333     | Greg   | false   |
  | Gset   | 46902    | 343       | Lass   | false   |
  Given the following admins exist:
  | name   | username | password |
  | user   | user     | pass     |
Scenario: Not showing pending matrices
  Given I am not an admin
  Then I should see "Bai"
  And I should see "Gset"
  But I should not see "Test1"
  And I should not see "Test2"
