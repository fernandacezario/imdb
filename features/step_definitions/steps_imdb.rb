Given(/^I'm on IMDb Top250 Home Page$/) do
  visit Top250Page
end

Then(/^the Top250 page should display at least one movie in the list$/) do
  expect(@current_page.movies_elements.size).to be >= 1
end

Then(/^the Western page should display at least one movie in the list$/) do
  expect(on(TopWestern).movies_elements.size).to be >= 1
end

When(/^I select sort by "([^"]*)"$/) do |sort_by|
  on(Top250Page).sort sort_by
end

When(/^I select "([^"]*)" genre$/) do |genre|
  on(Top250Page).movie_category genre
end

When(/^select sort by "([^"]*)"$/) do |sort_western|
  on(TopWestern).sort sort_western
end