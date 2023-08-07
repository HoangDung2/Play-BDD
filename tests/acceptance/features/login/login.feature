Feature: Login
    Background:
        Given User navigates to the application
    Scenario Outline: Login should be success
        And User enter the username as "<username>" 
        And User enter the password as "<password>"
        Then Verify username "<username>" & passworld all Fill as "<password>" 
        When User click on the login button
        Then Login should be success
        Examples:
            | username      | password | 
            | hoangdung1    | 1233211  | 
            | hoangdung2    | 1233211  |
    Scenario: Login should be faild
        And User enter the username as ""
        And User enter the password as "123456"
        Then Verify username as "" & passworld all Fill as "123456"
    Scenario:Login Fill username & password < 4 characters"
        And User enter the username as "1"
        And User enter the password as "123"
        Then Verify username as "1" & passworld all Fill as "123"
        When Click Check Remenber
        Then Login should be failed notification Password must be more four characters
    Scenario:Login Username & password is invalid"
        And User enter the username as "asd123"
        And User enter the password as "123456"
        Then Verify username as "asd123" & passworld all Fill as "123456"
        When User click on the login button
        Then Login should be failed notification username & password is invalid
   
