# File: features/download_matrix.feature
#
# Cucumber tests for the matrix data download links

Feature: Matrix downloading
  As a consumer
  So I can download matrices
  I need a set of valid download links

Scenario: Matlab Link
  Given there is a matrix with the group "HB" and the name "jagmesh7"
  When I go to the home page
  Then I should be able to download a "MATLAB" file called "jagmesh7.mat"

Scenario: Rutherford Boeing Link
  Given there is a matrix with the group "HB" and the name "jagmesh7"
  When I go to the home page
  Then I should be able to download a "Rutherford Boeing" file called "jagmesh7.tar.gz"

Scenario: Matrix Market Link
  Given there is a matrix with the group "HB" and the name "jagmesh7"
  When I go to the home page
  Then I should be able to download a "Matrix Market" file called "jagmesh7.tar.gz"
