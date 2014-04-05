Feature: Add a book
  Scenario: In order to maintain a library of books
  I should be able to add books
    Given I am on the add books page
    When I enter the book details
    Then I should see a confirmation page