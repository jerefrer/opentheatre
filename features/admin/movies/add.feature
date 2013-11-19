Feature: Add movies
  In order to add movies to the database
  As an admin
  I want to be able to create a movie in the most simple way, including director/actors/overview

  Scenario: Go to the new page
    Given I am on the admin dashboard page
    And I click the "Movies" link
    Then I should see "Add a new movie"
