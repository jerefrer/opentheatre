Feature: List movies
  In order to know which movies I can go watch
  As a user
  I want to be able to see a list of the movies

  Scenario: Empty movies page
    When I go to the movies page
    Then I should see a message saying there is no movies yet

  Scenario: Movies page with some movies
    Given there is a movie with the title "Matrix"
    And   there is a movie with the title "Dark City"
    When I go to the movies page
    Then I should see "Matrix"
    And  I should see "Dark City"
