When /I (am on|go to) the admin dashboard page/ do |_|
  visit '/admin'
end

Then /^I should see a link to the admin movies page$/ do
  page.should have_link('Movies', href: admin_movies_path)
end