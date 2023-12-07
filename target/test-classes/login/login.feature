Feature: login test
Scenario: validating the login
Given User should be on the login page
When Enters a Username 
And Enters a Password
And click on login
Then login successfull!!

Scenario: validating the invalid login
When user Enters a wroung Username 
And Enters a wroung Password
And click on login
Then login was unsuccessfull!!

