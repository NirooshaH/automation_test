Feature: validating the login page

Background:
Given when user enters a username and password and click on login welcom page shuld come

#tagname
@positiveinputs
Scenario Outline:
When user enters a valid user name "<username>"
And user enters a valid password "<password>"
And user click on login button 
Then user should see login page "<Homepage>"

Examples:
|username|password|Homepage|
|hniroosha@gmail.com|NiroosH@1|welcom page|
|hniroosha@gmail.com|NiroosH@1|welcom page|

@negativeinputs
Scenarios: when user enters invalid Un and pwd
When user enters a invalid user name "username"
And user enters a invalid password "password"
And user click on login button 
Then user should see login page "welcompage will not show"