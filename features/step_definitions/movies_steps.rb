Then "I should see a message saying there is no movies yet" do
  page.should have_content("No movies yet.")
end

When(/^I am on the page for the movie "(.*?)"$/) do |title|
  visit "/movies/#{title.parameterize}"
end