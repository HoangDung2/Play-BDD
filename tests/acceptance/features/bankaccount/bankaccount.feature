Feature: 
    Background: 
        Given User navigates to the application
        And Login User Name
        Then Verify Login Success
    Scenario: Create BankAccount New
        And Click Icon BankAccount
        Then Verify Page BankAccount Create
        And Click Create BankAccount
        And User enter the BankName as "Chanel2"
        And User enter the RoutNumer as "123456798"
        And User enter the AccountNum as "123456789"
        When User click Save Button
        Then Verify Create Account Success
    
    Scenario: Unfill from Creat BankAccount
        And Click Icon BankAccount
        Then Verify Page BankAccount Create
        And Click Create BankAccount
        And User enter the BankName as ""
        And User enter the RoutNumer as ""
        And User enter the AccountNum as ""
        When User click RoutNumer then check notification
        Then Verify notification requid is display

    Scenario: Fill from Creat Bankaccount at least requid"
        And Click Icon BankAccount
        Then Verify Page BankAccount Create
        And Click Create BankAccount
        And User enter the BankName as "123"
        And User enter the RoutNumer as "123"
        And User enter the AccountNum as "123"
        When User click RoutNumer then check notification 
        Then Verify notification requid is display
     
    Scenario: Fill BankName , Routing & Account is't enough condition least"
        And Click Icon BankAccount
        Then Verify Page BankAccount Create
        And Click Create BankAccount
        And User enter the BankName as "123"
        And User enter the RoutNumer as "123"
        And User enter the AccountNum as "12345"
        When User click RoutNumer then check notification 
        Then Verify notification requid Router & Account is least

    Scenario: Fill BankName , Routing & Account is't enough condition max"
        And Click Icon BankAccount
        Then Verify Page BankAccount Create
        And Click Create BankAccount
        And User enter the BankName as "123"
        And User enter the RoutNumer as "123"
        And User enter the AccountNum as "123456789101213"
        When User click RoutNumer then check notification 
        Then Verify notification requid Router & Account is max