Feature: Edit movies
  In order to update movies informations
  As an admin
  I want to be able to modify every pice of information about a movie

  Scenario: Go to the edit page
    Given there is a movie with the title "Matrix"
    And   I am on the admin dashboard page
    And I click the "Movies" link in the sidebar
    Then I should see a link "Edit" in the same line as the movie "Matrix"

  Scenario: Edit a movie
    Given there is a movie with the title "Matrix"
    And I am on the admin edit movie page for the movie "Matrix"
    When I change the movie to be Cloud Atlas
    And I click the "Update Movie" button
    Then I should see a message saying the movie has been updated
    And I should see "Cloud Atlas"