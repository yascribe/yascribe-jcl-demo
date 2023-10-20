Feature: Demo assertion steps

  Scenario: To check "check, uncheck" is displayed on yascribe Actions page
    When I navigate to "https://yascribe.com/"
    And I click on "Documentation"
    And I click on "Actions"
    Then "check, uncheck" is displayed