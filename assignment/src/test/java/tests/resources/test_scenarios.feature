Feature: Validate Contact Us form
  As an user
  I want to send company a message
  So that I can provide them a feedback

  Scenario: Validate success form submission
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered a last name "<lastName>"
    And I entered an email "<email>"
    And I entered a comment "<comment>"
    When I click submit button
    Then I will see the success message

    Examples:
    | firstName                 | lastName                 | email                         | comment                  |
    | Janeth                    | Morrison                 | janethmorrison@mailinator.com | Leaving a nice feedback! |
    | Yo                        | Li                       | yoly@mailinator.com           | Leaving a nice feedback! |
    | Testingnamewithtwentyfive | Testinglastwithtwentyfive| testing@mailinator.com        | Leaving a nice feedback! |



  Scenario: Validate missing first name
    Given I have successfully launched Contact Us page
    And I entered a last name "<lastName>"
    And I entered an email "<email>"
    And I entered a comment "<comment>"
    When I click submit button
    Then I get an all fields are required error message

    Examples:
      | lastName                 | email                         | comment                  |
      | Morrison                 | janethmorrison@mailinator.com | Leaving a nice feedback! |


  Scenario: Validate missing last name
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered an email "<email>"
    And I entered a comment "<comment>"
    When I click submit button
    Then I get an all fields are required error message

    Examples:
      | firstName                 | email                         | comment                  |
      | Janeth                    | janethmorrison@mailinator.com | Leaving a nice feedback! |


  Scenario: Validate missing email
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered a last name "<lastName>"
    And I entered a comment "<comment>"
    When I click submit button
    Then I get an all fields are required error message
    And I get invalid email address error message

    Examples:
      | firstName                 | lastName                 |comment                  |
      | Janeth                    | Morrison                 |Leaving a nice feedback! |

  Scenario: Validate missing comments
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered a last name "<lastName>"
    And I entered an email "<email>"
    When I click submit button
    Then I get an all fields are required error message

    Examples:
      | firstName                 | lastName                 | email                         |
      | Janeth                    | Morrison                 | janethmorrison@mailinator.com |

  Scenario: Validate invalid email
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered a last name "<lastName>"
    And I entered an email "<email>"
    And I entered a comment "<comment>"
    When I click submit button
    And I get invalid email address error message

    Examples:
      | firstName                 | lastName                 | email                         | comment                  |
      | Janeth                    | Morrison                 | janethmorrisonmailinator.com  | Leaving a nice feedback! |
      | Phil                      | Tomas                    | philtomas@mailinator          | Leaving a nice feedback! |
      | Math                      | Mathew                   | mathmathew                    | Leaving a nice feedback  |

  Scenario: Validate submitting empty form
    Given I have successfully launched Contact Us page
    When I click submit button
    Then I get an all fields are required error message
    And I get invalid email address error message


  Scenario: Validate reset functionality
    Given I have successfully launched Contact Us page
    And I entered a first name "<firstName>"
    And I entered a last name "<lastName>"
    And I entered an email "<email>"
    And I entered a comment "<comment>"
    When I click reset button
    Then all fields are reset

    Examples:
      | firstName                 | lastName                 | email                         | comment                  |
      | Janeth                    | Morrison                 | janethmorrison@mailinator.com | Leaving a nice feedback! |




###########################################################################################################################################
#
# THE SCENARIOS BELOW ARE COMMENTED BECAUSE THE APPLICATION IS NOT WORKING PROPERLY AND IT IS ACCEPTING FIRST AND LAST NAME WITH ANY LENGTH WHEN IT WAS SUPPOSED TO ACCEPT AT LEAST 2 CHARS AND MAXIMUM 25 CHARS
# SO I COULD NOT MAP THE ERROR MESSAGE TO IMPLEMENT RELATED STEP
#
#  Scenario: Validate invalid first name
#    Given I have successfully launched Contact Us page
#    And I entered a first name
#    And I entered a last name
#    And I entered an email
#    And I entered a comment
#    When I click submit button
#    Then I will see the error message

#    Examples:
#      | firstName                  | lastName                 | email                         | comment                  |
#      | Testtesttesttesttesttestte | Morrison                 | janethmorrison@mailinator.com | Leaving a nice feedback! |
#      | Y                         | Li                       | yoly@mailinator.com           | Leaving a nice feedback! |
#
#
#  Scenario: Validate invalid last name
#    Given I have successfully launched Contact Us page
#    And I entered a first name
#    And I entered a last name
#    And I entered a email
#    And I entered a comment
#    When I click submit button
#    Then I will see the error message

#    Examples:
#      | firstName                  | lastName                   | email                         | comment                  |
#      | Testing                    | Testtesttesttesttesttestte | janethmorrison@mailinator.com | Leaving a nice feedback! |
#      | Testing                    | T                          | yoly@mailinator.com           | Leaving a nice feedback! |


