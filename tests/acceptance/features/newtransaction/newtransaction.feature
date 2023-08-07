Feature: Newtransaction
        Background:
                Given User navigates to the application
                And Login User Name
                Then Verify Login Success
        Scenario: Create Transaction Success (Return)
                And Click New Transaction
                Then Verify Page Transaction
                And User enter the Search Name as "Edgar Johns"
                When User click choose username
                And User enter the Amount as "2000"
                And User enter the Add a note as "abcd"
                And Click choose Request
                Then Verify Transaction Success
                And Return to Transaction
                Then Verify Return Transaction Success
        Scenario: Create Transaction Success (Create)
                And Click New Transaction
                Then Verify Page Transaction
                And User enter the Search Name as "Edgar Johns"
                When User click choose username
                And User enter the Amount as "2000"
                And User enter the Add a note as "abcd"
                And Click choose Pay
                Then Verify Transaction Success
                And Create to Transaction
                Then Verify Create Transaction Success
        Scenario: Unfill from Payment
                And Click New Transaction
                Then Verify Page Transaction
                And User enter the Search Name as "Edgar Johns"
                When User click choose username
                And User enter the Amount as ""
                And User enter the Add a note as ""
                And Click Check Amount then notification is display
                Then Verify notification requid is display
        Scenario: Unfill from Payment
                And Click New Transaction
                Then Verify Page Transaction
                And User enter the Search Name as "Edgar Johns"
                When User click choose username
                And User enter the Amount as "0"
                And User enter the Add a note as ""
                Then Verify Create Transaction Success
