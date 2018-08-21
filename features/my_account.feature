@parallel
Feature: As an owner or manager of an estate, trust, or corporation, I expect to be able to add accounts online

@done
Scenario: The user can navigate to the Account Summary page when opting to cancel the Add Accounts process
    Given I am an add_accounts_user
    And I am viewing add accounts
@done
Scenario: The user can see a page-level error message on the Add Accounts page when all account number fields are left blank
    Given I am a no_new_accounts_user
    Then I see an error that I entered no accounts
@done
Scenario: The user can see a page-level error message on the Add Account Status page when adding an account fails
    Given I am an invalid_accounts_user
    When I submit invalid accounts

Scenario: The user can navigate to the Account Summary page using the Account Summary button on the Add Account Status page
    Given I am a view_all_accounts_user
    Then I see all my accounts
