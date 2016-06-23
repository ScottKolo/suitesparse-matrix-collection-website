Feature: Admin Page
  As an administrator
  So that I can edit the matrix data in the database
  I want an administrative view
Background: matrices have been added to database

  Given the following matrices exist:
  | group  | num_rows | num_rows  | author |
  | Test1  | 343      | 55        | John   |
  | Test2  | 34       | 435       | Paul   |
  | Bai    | 44       | 23333     | Greg   |
  | Gset   | 46902    | 343       | Lass   |
  Given the following admins exist:
  | name   | username | password |
  | user   | user     | pass     |

