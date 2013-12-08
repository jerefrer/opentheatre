Then "I should see a message saying there is no movies yet" do
  page.should have_content("No movies yet.")
end

When /^I am on the page for the movie "(.*?)"$/ do |title|
  visit "/movies/#{title.parameterize}"
end

Given /^I am on the admin edit movie page for the movie "(.*?)"$/ do |title|
  visit "/admin/movies/#{title.parameterize}/edit"
end

When  /^I fill in the movie creation form$/ do
  fill_in 'Title', with: 'Matrix'
  fill_in 'Overview', with: 'Awesome movie about robots !'
  attach_file('Poster', File.join(Rails.root, '/features/support/matrix.jpg'))
end

Then /^I should see a link "(.*?)" in the same line as the movie "(.*?)"$/ do |link_text, title|
  find('tr', text: title).should have_content(link_text)
end

When /^I change the movie to be Cloud Atlas$/ do
  fill_in 'Title', with: 'Cloud Atlas'
  fill_in 'Overview', with: 'Awesome movie about parallel lives !'
  attach_file('Poster', File.join(Rails.root, '/features/support/cloud_atlas.jpg'))
end

When /^I click the "(.*?)" button$/ do |text|
  click_button(text)
end

Then /^I should see a message saying the movie has been created$/ do
  page.should have_content("The movie has been created.")
end

Then /^I should see a message saying the movie has been updated$/ do
  page.should have_content("The movie has been updated.")
end

Then /^I should see the poster for the movie "(.*?)"$/ do |title|
  page.should have_selector(".poster img")
end

When(/^I submit the movie search form with "(.*?)"$/) do |text|
  within '.search' do
    fill_in 'q', with: text
    click_button 'Search'
  end
end

Then(/^I should see those movies and their posters:$/) do |table|
  table.rows.flatten.each do |title|
    find('tr', text: title).should have_selector('img')
  end
end