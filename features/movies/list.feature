Feature: List movies
  In order to know which movies I can go watch
  As a user
  I want to be able to see a list of the movies

  Scenario: List the movies
    Given there is a movie with the title "Matrix"
    And   there is a movie with the title "Dark City"
    And   I am on the movies page
    Then I should see "Matrix"
    And  I should see "Dark City"
