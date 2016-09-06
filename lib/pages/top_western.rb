class TopWestern
  include PageObject

  rows(:movies, css: '.lister-item.mode-advanced')
  
  links(:sort, css: '.sorting a')

  def sort(value)
  	link_element(:text => /#{value}/i).click
  end
end