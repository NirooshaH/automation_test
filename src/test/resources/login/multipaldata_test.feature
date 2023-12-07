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
|Username|Password|
|hniroosha@gmail.com|NiroosH@1|
|hniroosha@gmail.com|NiroosH@1|


@negativetest
Scenario: To test the login with invalid inputs
When user enters a invalid username "affgah"
And user enters a invalid password "yhgstafga"
And user click on login button 
Then user should see the user name as "error"
