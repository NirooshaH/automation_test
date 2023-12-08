Feature: login test for a browser

Background:

Given when user enters avalid username and pwd welcome page should come

@positivescenario
Scenario Outline: user enter a valid UN and PWD

When user enter a UN "<UN>"
Then user enter a PWD "<pwd>"
Then user click on login button
And user should see "<welcom!!>"

Examples:
|UN|pwd|welcom!!|
|Admin|admin123|Dashboard|
|Admin|admin123|Dashboard|
|Admin|admin123|Dashboard|

@negativescenario
Scenario Outline: user enter a invalid UN and PWD
When  user enter a invalid UN "<UN>"
Then user enter a invalid PWD "<pwd>"
Then user click on login button
And user should not see "<welcom!!>"

Examples:
 |UN|pwd|welcom!!|
 |Admin123|admin@123|invalid|
