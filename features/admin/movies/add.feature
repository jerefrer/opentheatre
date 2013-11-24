Feature: Add movies
  In order to add movies to the database
  As an admin
  I want to be able to create a movie in the most simple way, including director/actors/overview

  Scenario: Go to the new page
    Given I am on the admin dashboard page
    And I click the "Movies" link in the sidebar
    Then I should see a link "New" to the admin new movie page

  Scenario: Create a movie
    Given I am on the admin new movie page
    When I fill in the movie creation form
    And I click the save button
    Then I should see a message saying the movie has been created