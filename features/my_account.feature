@parallel
Feature: As an owner or manager of an estate, trust, or corporation, I expect to be able to add accounts online

@done
Scenario: The user add_accounts_user can navigate to the Account Summary 
    Given I am an "add_accounts_user"
    And I am viewing add accounts
@done
Scenario: The user no_new_accounts_user can see a page-level error message 
    Given I am a "no_new_accounts_user"
    Then I see an error that I entered no accounts
@done
Scenario: The user invalid_accounts_user can see a page-level error message 
    Given I am an "invalid_accounts_user"
    When I submit invalid accounts

Scenario: The user view_all_accounts_user can navigate to the Account Summary
    Given I am a "view_all_accounts_user"
    Then I see all my accounts
@done
Scenario: The user proxy_accounts_user can navigate to the Account Summary 
    Given I am a "proxy_accounts_user"
    Then I can see few of my accounts
@done
Scenario: The user agent_accounts_user can navigate to the Account Summary 
    Given I am a "agent_accounts_user"
    Then I can see agent accounts only

Scenario: The user admin_accounts_user can navigate to the Account Summary 
    Given I am a "admin_accounts_user"
    Then I can update any accounts
@done
Scenario: The user fresh_accounts_user can navigate to the Account Summary 
    Given I am a "fresh_accounts_user"
    Then I can not see existing accounts
@done
Scenario: The user expired_accounts_user can navigate to the Account Summary 
    Given I am a "expired_accounts_user"
    Then I can not see any accounts