Feature:
	The IMDb Top 250 page returns at least one movie​, in the list
	The previous should be true, for each of the sorting options
	The previous should also be true, when navigating to the Western​ genre

Background:
    Given I'm on IMDb Top250 Home Page

Scenario: IMDb Top 250 page returns at least one movie​
    Then the page should display at least one movie in the list

Scenario: Sorting option IMDb rating on Top 250 page returns at least 1 movie​
	When I select sort by "IMDb Rating"
    Then the page should display at least one movie in the list

Scenario: Sorting option release date IMDb on Top2 50 page returns at least 1 movie​
	When I select sort by "Release Date"
    Then the page should display at least one movie in the list

Scenario: Sorting option number of ratings IMDb on Top2 50 page returns at least one movie​
	When I select sort by "Number of Ratings"
    Then the page should display at least one movie in the list

Scenario: Sorting option your rating IMDb on Top 250 page returns at least one movie​
	When I select sort by "Your Rating"
    Then the page should display at least one movie in the list

Scenario: Select Western genre page returns at least one movie​
	When I select "Western" genre
    Then the page should display at least one movie in the list

Scenario: Sorting option popularity on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Popularity"
    Then the page should display at least one movie in the list

Scenario: Sorting option alphabetical on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Alphabetical"
    Then the page should display at least one movie in the list

Scenario: Sorting option number of votes on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Number of Votes"
    Then the page should display at least one movie in the list

Scenario: Sorting option US box office on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "US Box Office"
    Then the page should display at least one movie in the list

Scenario: Sorting option runtime on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Runtime"
    Then the page should display at least one movie in the list

Scenario: Sorting option year on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Year"
    Then the page should display at least one movie in the list

Scenario: Sorting option release date on Western genre page returns at least one movie​
	When I select "Western" genre
	And select sort by "Release Date"
    Then the page should display at least one movie in the list