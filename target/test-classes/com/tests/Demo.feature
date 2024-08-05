Feature: User Login
Registered user should be able to login to access account details

Scenario: Login with valid credentials 
Given User navigates to Login page
When User enters valid email address "tanjiro@kamado.com"
And Enter valid password "12345"
And Clicks on Login button
Then User should login successfully

Scenario: Login with invalid credentials 
Given User navigates to Login page
When User enters invalid email address "tanjiro@kamado.com"
And Enter invalid password "12345"
And Clicks on Login button
Then User should get proper warning message

Scenario: Login with invalid email address and valid password
Given User navigates to Login page
When User enters invalid email address "tanjiro@k.com"
And Enter valid password "12345"
And Clicks on Login button
Then User should not login successfully
And User should get the error message for invalid email address

Scenario: Login with valid email address and invalid password credential 
Given User navigates to Login page
When User enters valid email address "tanjiro@kamado.com"
And Enter invalid password "1245"
And Clicks on Login button
Then User should get proper warning message

Scenario: Login without providing credentials 
Given User navigates to Login page
When User dont enter any email address
And User dont enter any  password
And Clicks on Login button
Then User should get proper warning message

