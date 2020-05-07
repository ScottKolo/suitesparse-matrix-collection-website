Feature: Show Matrix Images 1
  As a user
  So that I can view relevant matrix visualizations
  I need to view matrix visualization images on the detail page
  
Background: matrices have been added to database

    Given the following matrices exist:
    | group                | name        | image_files                                       | 
    | Norris               | lung1       | lung1.png,lung1_graph.gif,lung1_APlusAT_graph.gif |
    | HB                   | abb313      | abb313_scc.png                                    |
    | Pothen               | pwt         | pwt_svd.png,pwt_gplot.png,pwt_dmperm.png          |
    | TAMU_SmartGridCenter | ACTIVSg2000 | ACTIVSg2000.png,ACTIVSg2000_map.png               |

Scenario: Graph plot for Matrix with one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should see a "graph" plot for matrix "lung1"

Scenario: Graph plot for Matrix without one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should not see a "graph" plot for matrix "pwt"

Scenario: APlusAT plot for Matrix with one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should see an "APlusAT" plot for matrix "lung1"

Scenario: APlusAT plot for Matrix without one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should not see an "APlusAT" plot for matrix "pwt"

Scenario: Pattern plot for Matrix with one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should see a "pattern" plot for matrix "lung1"

Scenario: Pattern plot for Matrix without one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should not see a "pattern" plot for matrix "pwt"

Scenario: SVD plot for Matrix with one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should see an "svd" plot for matrix "pwt"

Scenario: SVD plot for Matrix without one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should not see an "svd" plot for matrix "pwt"

Scenario: 3D graph plot for Matrix with one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should see a "gplot" plot for matrix "pwt"

Scenario: 3D graph plot for Matrix without one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should not see a "gplot" plot for matrix "lung1"

Scenario: Dulmage-Mendelsohn Permutation plot for Matrix with one
  When I am on the show page for a matrix with name "pwt" and group "Pothen"
  Then I should see a "dmperm" plot for matrix "pwt"

Scenario: Dulmage-Mendelsohn Permutation plot for Matrix without one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should not see a "dmperm" plot for matrix "lung1"

Scenario: SCC plot for Matrix with one
  When I am on the show page for a matrix with name "abb313" and group "HB"
  Then I should see an "scc" plot for matrix "abb313"

Scenario: SCC plot for Matrix without one
  When I am on the show page for a matrix with name "lung1" and group "Norris"
  Then I should not see an "scc" plot for matrix "lung1"

Scenario: Custom image for a matrix
  When I am on the show page for a matrix with name "ACTIVSg2000" and group "TAMU_SmartGridCenter"
  Then I should see an image named "ACTIVSg2000_map"