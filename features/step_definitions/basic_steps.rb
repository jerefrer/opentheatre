Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

And /^(?:|I )click the "([^\"]*)" link$/ do |link_text|
  click_link(link_text)
end