Then "I should see a message saying there is no movies yet" do
  page.should have_content("No movies yet.")
end

When(/^I am on the page for the movie "(.*?)"$/) do |title|
  visit "/movies/#{title.parameterize}"
end

When (/^I fill in the movie creation form$/) do
  fill_in 'Title', with: 'Matrix'
end

When(/^I click the save button$/) do
  click_button('Create Movie')
end

Then(/^I should see a message saying the movie has been created$/) do
  page.should have_content("The movie has been created.")
end
