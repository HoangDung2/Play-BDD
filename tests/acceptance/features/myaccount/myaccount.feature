Feature: My Account
    Background: 
        Given User navigates to the application
        And Login User Name
        Then Verify Login Success
     Scenario: Fill from User Setting, First & Last name is available
        And Click Icon MyAccount
        Then Verify Page Account
        And User enter the Email as "chanel@gmail.com"
        And User enter the Phone as "12345678"
        When User click Save Button
        Then Verify Create Account Success "chanel@gmail.com" "12345678"
    Scenario: Unfill from User Setting
        And Click Icon MyAccount
        Then Verify Page Account
        And User enter the FirstName as ""
        And User enter the Lastname as ""
        And User enter the Email as ""
        And User enter the Phone as "0"
        Then Verify notification requid is display
       Scenario: Fill Emai & Phone fail
        And Click Icon MyAccount
        Then Verify Page Account
        And User enter the Email as "123456"
        And User enter the Phone as "0"
        Then Verify notification requid Email & Phone is display