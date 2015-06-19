Feature: User registration
  As a first time user
  I want to register
  So that I can become a THUD member

  Background:
    Given I am on the "Landing" page
    When I click "Sign up"
    Then I should be on the User registration page

  Scenario: Create new profile
    Then show me the page
    When I fill in "First Name" with "John"
    # When I fill in "first_name" with "John"
    And I fill in "Last Name" with "Doe"
    # And I fill in "last_name" with "Doe"
    And I fill in "City" with "Pretoria"
    # And I fill in "city" with "Pretoria"
    And I fill in "Email" with "johndoe@example.com"
    #And I fill in "email" with "johndoe@example.com"
    And I fill in "Password" with "password"
    # And I fill in "password" with "password"
    And I fill in "Password Confirmation" with "password"
    # And I fill in "password_confirmation" with "password"
    And I accept the terms and conditions
    And I click "Sign up" button
    Then I should be on the view page for User "John Doe"
