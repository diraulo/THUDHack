Feature: User sign_in
  As an existing user
  I want to sign in to my account
  So that I can view my profile

  Background:
    Given the following users exist:
      | first_name | last_name | email            | password | member_type  | city     |
      | John       | Doe       | john@example.com | password | Entrepreneur | pretoria |

    Given I am not logged in
    And I visit the "user login" page

  Scenario: Successfull login
    When I fill in "Email" with "john@example.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Signed in successfully"

  Scenario: User provides wrong email address
    When I fill in "Email" with "john1@example.com"
    And I fill in "Password" with "password"
    And I click "Log in"
    Then I should see "Invalid email or password"

  Scenario: User provides wrong email address
    When I fill in "Email" with "john@example.com"
    And I fill in "Password" with "pa$ssword"
    And I click "Log in"
    Then I should see "Invalid email or password"
