Dado(/^a url www\.walmart\.com\.br$/) do
  visit 'http://www.walmart.com.br'
end

Quando(/^o usuário digitar na busca o termo tv$/) do
  fill_in('suggestion-search', :with => 'tv')
end

Quando(/^acessar o botão procurar$/) do
  click_on('Procurar') 
end

Então(/^deverá exibir o resultado da busca realizada$/) do
  expect(page).to have_content('Resultados de busca para "TV"')
end

Quando(/^acessar um produto$/) do
  @product_title = page.first('.product-title').text
  @product_price = page.first('.payment-price').text
  @product_url = page.first('.product-link')[:href]

  page.first('.product-link').click
end

Então(/^deverá exibir o resultado de acesso ao produto$/) do
  expect(page).to have_content(@product_title)
  expect(page).to have_content(@product_price)
  expect(page.current_url).to eq @product_url
end

Quando(/^acessar o botão adicionar ao carrinho$/) do
  click_on('Adicionar ao carrinho') 
end

Quando(/^acessar o botão continuar$/) do
  click_on('Continuar')
end

Então(/^deverá inserir o produto no box do carrinho$/) do
  within("div.cart-info") do
    expect(first('.product-title')).to have_content(@product_title)
    expect(first('.product-quantity')).to have_content('Quantidade: 1')
  end
end

Quando(/^acessar o botão comprar do box do carrinho$/) do
  click_on('Comprar')
end

Então(/^deverá exibir o item no carrinho$/) do
  expect(page.first('.product-list-item')).to have_content(@product_title)
end

Quando(/^acessar o botão carrinho$/) do
  first('.cart-link').click
end

