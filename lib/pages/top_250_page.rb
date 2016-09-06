class Top250Page
  include PageObject
 
  page_url 'http://www.imdb.com/chart/top'

  rows(:movies, css: '.lister-list tr')
end