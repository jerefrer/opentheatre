Given /^(?:|I )am on the (.+) page$/ do |page_name|
  visit path_to(page_name)
end

Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^(?:|I )should see a link "([^\"]*)" to (.+)$/ do |text, page_name|
  page.should have_link(text, :href => path_to(page_name))
end

When /^(?:|I )click the "([^\"]*)" link$/ do |link_text|
  click_link(link_text)
end