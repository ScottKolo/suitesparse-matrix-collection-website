Feature: Show Matrix Images 1
  As a user
  So that I can view relevant matrix visualizations
  I need to view matrix visualization images on the detail page
  
Background: matrices have been added to database

    Given the following matrices exist:
    | group  | name     | image_files                                             | 
    | Boeing | dingbat  | dingbat.png,dingbat_graph.png,dingbat_APlusAT_graph.png |
    | HB     | banana   | banana_scc.png                                          |
    | Bai    | canoe    | canoe_svd.png,canoe_gplot.gif,canoe_dmperm.png          |
    | Gset   | airplane | airplane.png,custom_image.png                           |

Scenario: Graph plot for Matrix with one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should see a "graph" plot for matrix "dingbat"

Scenario: Graph plot for Matrix without one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should not see a "graph" plot for matrix "canoe"

Scenario: APlusAT plot for Matrix with one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should see an "APlusAT" plot for matrix "dingbat"

Scenario: APlusAT plot for Matrix without one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should not see an "APlusAT" plot for matrix "canoe"

Scenario: Pattern plot for Matrix with one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should see a "pattern" plot for matrix "dingbat"

Scenario: Pattern plot for Matrix without one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should not see a "pattern" plot for matrix "canoe"

Scenario: SVD plot for Matrix with one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should see an "svd" plot for matrix "canoe"

Scenario: SVD plot for Matrix without one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should not see an "svd" plot for matrix "canoe"

Scenario: 3D graph plot for Matrix with one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should see a "gplot" plot for matrix "canoe"

Scenario: 3D graph plot for Matrix without one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should not see a "gplot" plot for matrix "dingbat"

Scenario: Dulmage-Mendelsohn Permutation plot for Matrix with one
  When I am on the show page for a matrix with name "canoe" and group "Bai"
  Then I should see a "dmperm" plot for matrix "canoe"

Scenario: Dulmage-Mendelsohn Permutation plot for Matrix without one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should not see a "dmperm" plot for matrix "dingbat"

Scenario: SCC plot for Matrix with one
  When I am on the show page for a matrix with name "banana" and group "HB"
  Then I should see an "scc" plot for matrix "banana"

Scenario: SCC plot for Matrix without one
  When I am on the show page for a matrix with name "dingbat" and group "Boeing"
  Then I should not see an "scc" plot for matrix "dingbat"

Scenario: Custom image for a matrix
  When I am on the show page for a matrix with name "airplane" and group "Gset"
  Then I should see an image named "custom_image.png"