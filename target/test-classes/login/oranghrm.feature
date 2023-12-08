Feature: login to orange hrm site

Background:

Given user should enter a UN and PWD click on login 

@Positive
Scenario Outline: user enters a valid UN and valid PWD
When user enter Valid UN "<UN>"
Then user enter valid PWD "<PWD>"
Then user click on login
And user see "<WELCOMPAGE>"

Examples:
|UN|PWD|WELCOMPAGE|
|Admin|admin123|Dashboard|

@Negetive
Scenario Outline:user enters a invalid UN and valid PWD
When user enter inValid UN "<UN>"
Then user enter invalid PWD "<PWD>"
Then user click on login
And user see a "<ERROR>"

Examples:
|UN|PWD|ERROR|
|Admin12|admin1234|Dashboard|



