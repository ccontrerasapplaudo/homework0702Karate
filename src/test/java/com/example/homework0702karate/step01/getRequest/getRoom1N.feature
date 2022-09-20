Feature: To test the get endpoint of automationintesting.online
  Background: Setup the Base path
    Given url 'https://automationintesting.online'

  Scenario: To get all the data from application in JSON format
    Given path '/room/'
    When method get
    Then status 200
    And print response

