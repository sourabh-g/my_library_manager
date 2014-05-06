Feature: Manage Lendees

  Scenario: In order to lend books
  I should be able to manage lendees

    Given I am on the home page
    And I navigate to manage lendees page
    When I navigate to add lendees page
    And I create a lendee
    Then I should see details of new lendee