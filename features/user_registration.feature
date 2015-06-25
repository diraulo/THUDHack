Feature: User registration
  As a first time user
  I want to register
  So that I can become a THUD member

  Background:
    Given I am not logged in
    And I visit the "user registration" page

  Scenario: Successfully create new profile
    When I fill in "First name" with "John"
    And I fill in "Last name" with "Doe"
    And I fill in "City" with "Pretoria"
    And I fill in "Email" with "johndoe@example.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I select "user_member_type" to "Entrepreneur"
    And I accept the terms and conditions
    And I click "Sign up"
    Then I should see "You have signed up successfully"
    # Then I should see "You have to confirm your email address before continuing"
    # When I follow the confirmation link in the confirmation email

  Scenario: User enters an incorrect email address
    When I fill in "Email" with "aa@dd"
    And I click "Sign up"
    Then I should see "is invalid"

  Scenario: User's password and password confirmation are not matching
    When I fill in "Password" with "password"
    Then I fill in "Password confirmation" with "Pas$w0rd"
    And I click "Sign up"
    Then I should see "doesn't match Password"
