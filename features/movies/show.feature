Feature: Show a movie's page
  In order to investigate whether I'm interested in a movie and want to watch it
  As a user
  I want to be able to see a particular movie's full description

  Scenario: Show the movie's description
    Given there is a movie with the title "Matrix" and the overview "Awesome movie !"
    When I go to the page for the movie "Matrix"
    Then I should see "Matrix"
    And  I should see "Awesome movie !"