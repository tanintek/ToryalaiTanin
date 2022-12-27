Feature: Retail Account Page

  Background: 
    Given User is on retail website
    When User click on Sign in option
    And User enter email 'tom.tom@tekschool.us' and password 'Tom@2023!!'
    And User click on login button
    And User should be logged in into Account
    When User click on Account option

  @UpdateInformation
  Scenario: Verify User can update Profile Information
    When User click on Account option
    And User update Name 'Som' and Phone '8179433961'
    And User click on Update button
    Then user profile information should be updated

  @changePass
  Scenario: Verify User can Update password
    And User enter below information
      | previousPassword | newPassword | confirmPassword |
      | Tom@2023!!       | Tom@2023!?  | Tom@2023!?      |
    And User click on Change Password button
    Then a message should be displayed Password Updated Successfully

  @payment
  Scenario: Verify User can add a payment method
    And User click on Add a payment method link
    And User fill Debit or credit card information
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 1122334455667789 | Karim      |              12 |           2022 |          786 |
    And User click on Add your card button
    Then a message should be displayed Payment Method added successfully

  @updateCrad
  Scenario: Verify User can edit Debit or Credit card
    And User select the payment Card
    And User click on Edit option of card section
    And user edit information with below data
      | cardNumber       | nameOnCard | expirationMonth | expirationYear | securityCode |
      | 8877665544332211 | Hashim     |              12 |           2022 |          678 |
    And user click on Update Your Card button
    Then a message should be displayed Payment Method updated Successfully

  @removeCard
  Scenario: Verify User can remove Debit or Credit card
    And User select the payment Card
    And User click on remove option of card section
    Then payment details should be removed

  @addAddress
  Scenario: Verify User can add an Address
    And User click on Add address option
    And user fill new address form with below information
      | country     | fullName | phoneNumber | streetAddress | apt   | city  | state | zipCode |
      | Afghanistan | Jan      |  8179443581 | Keele         | 58000 | Yonge | Kabul |   76133 |
    And User click on Add Your Address button
    Then a message should be displayed Address Added Successfully

  @EditAddress
  Scenario: Verify User can edit an Address added on account
    And User click on edit address option
    And User fill new address form with below information
      | country     | fullName | phoneNumber | streetAddress | apt | city  | state | zipCode |
      | Afghanistan | Tahir    | 81794435823 | Kolala Poshta | 469 | kabul | Kabul |  24573 |
    And User click update Your Address button
    Then a message should be displayed Address Updated Successfully

  @removeOldAddress
  Scenario: Verify User can remove Address from Account
    And User click on remove option of Address section
    Then Address details should be removed
