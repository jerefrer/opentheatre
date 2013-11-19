Feature: List movies
  In order to see what movies exist in the database
  As an admin
  I want to be able to list the movies

  Scenario: Show a message when no movies exist
    When I go to the admin movies page
    Then I should see a message saying there is no movies yet

  Scenario: List the movies
    Given there is a movie with the title "Matrix"
    And   there is a movie with the title "Dark City"
    When I go to the admin movies page
    Then I should see "Matrix"
    And  I should see "Dark City"
