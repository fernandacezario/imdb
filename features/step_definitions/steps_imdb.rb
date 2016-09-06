Given(/^I'm on IMDb Top250 Home Page$/) do
  visit Top250Page
	#visit 'http://www.imdb.com/chart/top'
end

Then(/^the page should display at least one movie in the list$/) do
  expect(@current_page.movies_elements.size).to be >= 1000
end

When(/^I select sort by "([^"]*)"$/) do |sort_by|
	select(sort_by, :from => 'sort')
end

When(/^I select "([^"]*)" genre$/) do |genre|
  click_on(genre)
end

When(/^select sort by "([^"]*)"$/) do |sort_western|
  click_on(sort_western)
end