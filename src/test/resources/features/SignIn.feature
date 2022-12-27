Feature: Sign In Feature

  #this is comment
  Background: 
    Given User is on retail website

  @SignInTest
  Scenario: Verify user can sign in into Retail Application
    When User click on Sign in  option
    And User enter email 'tom.tom@tekschool.us' and password 'Tom@2023!!'
    And User click on login button
    Then User should be logged in into Account

  @CreateAccount
  Scenario: Verify user can create an account into retail Website
    Given User is on retail website
    When User click on Sign in option
    And User click on Create New Account button
    And User fill the signUp information with below data
      | name | email                 | password   | confirmPassword |
      | Tom  | tom.tom2@tekschool.us | Tom@2023!! | Tom@2023!!      |
    And User click on SignUp button
    Then User should be logged into account page
    
