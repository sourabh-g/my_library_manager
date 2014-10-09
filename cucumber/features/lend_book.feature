Feature: Lend a book

  Scenario: In order to maintain a library of books
  I should be able to add a book and lend it
    Given I am on the home page
    And I navigate to manage lendees page
    When I navigate to add lendees page
    And I create a lendee
    Then I should see details of new lendee

    Given I am on the home page
    And I navigate to manage books page
    And I navigate to add books page
    When I enter the book details
    Then I should see details of new book

#    Given I am on manage books page
#    And I navigate to edit book
#    And I lend the book
#    Then I should see the lendee details for the book
