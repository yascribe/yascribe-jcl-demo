Feature: Demo input action

  Scenario: To fill the yascribe contact form
    When I navigate to "https://yascribe.com/"
    And I click "Contact"
    And I enter "John Carter" as "Your name"
#    "Your message" is a text area, have to specified its type
    And I enter "John Carter does not come from Mars." in "Your message" textarea
    And I click on "Submit"
#    the following assertion should failed because of reCAPTCHA
    Then the page displays "One or more fields have an error. Please check and try again."