Feature: List movies
  In order to see what movies exist in the database
  As an admin
  I want to be able to list the movies

  Scenario: List the movies
    Given there is a movie with the title "Matrix"
    And   there is a movie with the title "Dark City"
    And   I am on the admin movies page
    Then I should see "Matrix"
    And  I should see "Dark City"
