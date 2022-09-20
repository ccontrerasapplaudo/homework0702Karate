Feature: To test the post endpoint and login of automationintesting.online
  Background: Setup the Base path
    Given url 'https://automationintesting.online'

Scenario: To obtain token value, that will be used on other scenarios
Given path '/booking/'
* def body = read("/data/booking1Room.json")
And request body
  * def tokenValueStored = read("/data/tokenValue.txt")
And print "Token value 2:", tokenValueStored
And header cookie = tokenValueStored
And headers {Accept : 'application/json', Content-Type: 'application/json'}
When method post
And status 200