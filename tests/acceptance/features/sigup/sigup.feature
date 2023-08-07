Feature: Sigup Account
    Background:
        Given User navigates to the application

    Scenario: :Sigup should be succes
        And User enter the firstname as "123"
        And User enter the lastname as "1"
        And User enter the username as "hoangdung2"
        And User enter the password as "1233211"
        And User enter the confirmPassword as "1233211"
        Then Verify from sigup all Fill "123" "1" "hoangdung2" "1233211" "1233211"
        When User click on the Sigup button
        Then Verify sigup should be succes
    # Scenario: :Unfill from sig up
    #     And User enter the firstname as ""
    #     And User enter the lastname as ""s
    #     And User enter the username as ""
    #     And User enter the password as ""
    #     And User enter the confirmPassword as ""
    #     And Click PassWord then check string empty
    #     Then Sigup should be faild notifacation all fiel requid
    # Scenario: :Fill all from sigup & Pasowrd at least four characters
    #     And User enter the firstname as "123"
    #     And User enter the lastname as "123"
    #     And User enter the username as "123"
    #     And User enter the password as "123"
    #     And User enter the confirmPassword as "123"
    #     Then Sigup should be faild notification Password must contain at least four characters
    # Scenario: :Fill all from sigup & ConfirmPassWord not match
    #     And User enter the firstname as "123"
    #     And User enter the lastname as "123"
    #     And User enter the username as "123"
    #     And User enter the password as "1234567"
    #     And User enter the confirmPassword as "12345678"
    #     Then Fill all from sigup & ConfirmPassWord not match

