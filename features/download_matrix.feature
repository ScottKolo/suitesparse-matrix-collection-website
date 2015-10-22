Feature: Matrix downloading
  As a consumer
  So I can download matrices
  I need a set of valid download links
    


  Scenario: Matlab Link
    Given there is a matrix with the group "HB" and the name "685_bus"
    When I go to the home page
    #Then I should receive a "mat" file

  Scenario: Rutherford Boeing Link
    Given there is a matrix with the group "HB" and the name "685_bus"
    When I go to the home page
    #Then I should receive a "tar" file


  Scenario: Matrix Market Link
    Given there is a matrix with the group "HB" and the name "685_bus"
    When I go to the home page
    #Then I should receive a "tar" file

