Feature: Admin Dashboard
  In order to access admin pages
  As an admin
  I want to be able to see the dashboard

  Scenario: Show a link to the movies
    When I go to the admin dashboard page
    Then I should see a link to the admin movies page
