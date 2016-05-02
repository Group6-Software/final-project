Feature: Viewer signs up for the newsletter
  In order to place an order
  As a customer
  I want to be able to place an order
 
  Scenario: View form page
    Given I am on "/orders/new"
    Then I should see "Place a new Order"
 
  Scenario: Fill out form
    Given I am on "/orders/new"
    When I fill in "Item" with "seed"
    And I fill in "Quantity" with "2"
    And I click "Create Order"
    Then I should see "Order was successfully created."
