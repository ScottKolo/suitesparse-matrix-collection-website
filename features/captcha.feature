Feature: Captcha verification
  As an administrator
  So that my site isn't flooded with bot submissions
  I want users to complete a captcha when submitting a matrix.

  @wip
  Scenario: Submission Valid
    Given there is a matrix the I want to submit
    And I fill in the fields
    And I fill in the captcha
    Then the matrix should have been added to the database
  
  @wip
  Scenario: Submission Invalid
    Given there is a matrix the I want to submit
    And I fill in the fields
    And I don't fill in the captcha
    Then the matrix should not have been added to the database
    And I should be on the submission page

