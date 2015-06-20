Feature: User sign_in
  As an existing user
  I want to sign in to my account
  So that I can view my profile

  Background:
    Given the following users exist:
      | first_name | last_name | email            | password | member_type  | city     |
      | John       | Doe       | john@example.com | password | Entrepreneur | pretoria |

    Given I am not logged in
    When I visit the site
    And I click "Sign in"
    Then I should be on the "user login" page

  Scenario: Successfull login
    When I fill in "user_email" with "john@example.com"
    And I fill in "user_password" with "password"
    And I click "Log in"
    Then I should see "Signed in successfully"

  Scenario: User provides wrong email address
    When I fill in "user_email" with "john1@example.com"
    And I fill in "user_password" with "password"
    And I click "Log in"
    Then I should see "Invalid email or password"

  Scenario: User provides wrong email address
    When I fill in "user_email" with "john@example.com"
    And I fill in "user_password" with "pa$ssword"
    And I click "Log in"
    Then I should see "Invalid email or password"
