Feature: Demo self learning

  Scenario: no run : to open yascribe documentation "page"
    When I click on "Documentation"
    And I click on "page"

  Scenario: To Navigate to yascribe site
    When I navigate to "https://yascribe.com/"

  Scenario: To check "check, uncheck" is displayed on yascribe "Actions" page
    When I open yascribe documentation "Actions"
    Then "check, uncheck" is displayed

  Scenario: To go to "Self-learning" after checking assertion "contain"
    When I check "contain" is displayed on yascribe "Assertions" page
    And I open yascribe documentation "Self-learning"