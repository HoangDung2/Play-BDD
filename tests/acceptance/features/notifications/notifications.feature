Feature: Notifications
        Background:
                Given User navigates to the application
                And Login User Name
                Then Verify Login Success
        Scenario: Delete Notification
                And Click Notification
                Then Verify Page Notification
                And Delete all Notification
                Then Verify Delete Success