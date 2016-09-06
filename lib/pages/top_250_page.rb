class Top250Page
  include PageObject
 
  page_url 'http://www.imdb.com/chart/top'

  rows(:movies, css: '.lister-list tr')

  select_list(:select_sort, class: 'lister-sort-by')

  def sort(value)
  	select_sort_element.select value
  end

  def movie_category(category)
 	link_element(:text => /#{category}/i).click
  end
end