When "I go to the movies page" do
  visit '/movies'
end

Then "I should see a message saying there is no movies yet" do
  page.should have_content("No movies yet.")
end

When(/^I go to the page for the movie "(.*?)"$/) do |title|
  visit "/movies/#{title.parameterize}"
end