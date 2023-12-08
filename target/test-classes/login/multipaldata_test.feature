Feature: validating the login for an application

Background:  

Given Open the browser and go to the login page of order placing site

@positivetest
Scenario Outline: To test login with valid data
 
When user enters a valid username "<Username>"
And user enters a valid password "<Password>"
And user click on login button 
Then user should see the  "<Welcompage>"

Examples:
|Username|Password|Welcompage|
|performance_glitch_user|secret_sauce|SWAGLABS|
|standard_user|secret_sauce|SWAGLABS|


@negativetest
Scenario Outline: To test the login with invalid inputs
When user enters a invalid username "<Username>"
And user enters a invalid password "<Password>"
And user click on login button 
Then user should see the user name as "<Welcompage>"

Examples:
|Username|Password|Welcompage|
|ugsta|ytsy_scerate|ERROR CHECK YOUR CREDENTIAL|
|ugsta123|ytsy_scerate123|ERROR CHECK YOUR CREDENTIAL|
