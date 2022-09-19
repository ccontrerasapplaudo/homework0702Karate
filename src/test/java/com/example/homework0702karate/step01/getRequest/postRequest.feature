Feature: To test the post endpoint and login of automationintesting.online
  Background: Setup the Base path
    Given url 'https://automationintesting.online'

  Scenario: To obtain token value, that will be used on other scenarios
    Given path '/auth/login'
    * def body = read("/data/authCredentials.json")
    And request body
    And headers {Accept : 'application/json', Content-Type: 'application/json'}
    When method post
    And status 200
    * def tokenValueStored = responseCookies.token.value
    And print "Token value:", tokenValueStored