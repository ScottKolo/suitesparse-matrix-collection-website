Feature: Show Matrix Page
  As a consumer
  So that I can obtain detailed information about a matrix
  I need to view matrix properties on the detail page
  
Background: matrices have been added to database

  Given the following matrices exist:
  | group  | name     | num_rows | num_cols  | author | pattern_symmetry | numeric_symmetry | 
  | Boeing | dingbat  | 343      | 55        | John   | 0.00             | 0.00             |
  | HB     | banana   | 34       | 34        | Paul   | 1.00             | 0.53             |
  | Bai    | canoe    | 23333    | 23333     | Greg   | 0.00             | 0.00             |
  | Gset   | airplane | 46902    | 46902     | Lass   | 1.00             | 1.00             |

Scenario: Symmetry for Rectangular Matrix
  Given I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then the "Pattern Symmetry" property should be "0%"
  Then the "Numeric Symmetry" property should be "0%"

Scenario: Symmetry for Unsymmetric Matrix
  Given I am on the show page for a matrix with name "canoe" and group "Bai"
  Then the "Pattern Symmetry" property should be "0%"
  Then the "Numeric Symmetry" property should be "0%"

Scenario: Symmetry for Pattern Symmetric Matrix
  Given I am on the show page for a matrix with name "banana" and group "HB"
  Then the "Pattern Symmetry" property should be "100%"
  Then the "Numeric Symmetry" property should be "53%"

Scenario: Symmetry for Symmetric Matrix
  Given I am on the show page for a matrix with name "airplane" and group "Gset"
  Then the "Pattern Symmetry" property should be "100%"
  Then the "Numeric Symmetry" property should be "100%"