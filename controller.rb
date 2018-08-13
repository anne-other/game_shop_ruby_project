require('sinatra')
require('sinatra/contrib/all')

require_relative('models/manufacturer.rb')
require_relative('models/product.rb')
also_reload('./models/*')

#INDEX
get '/inventory' do
  @manufacturers = Manufacturer.no_product()
  @products = Product.all()
  erb (:index)
end

#SHOW Manufacturer
get '/inventory/manufacturer/:id' do
  @manufacturer = Manufacturer.find(params['id'].to_i())
  erb (:"manufacturer/show")
end

#SHOW Product
get '/inventory/product/:id' do
  @product = Product.find(params['id'].to_i())
  erb (:"product/show")
end

#NEW Product
get '/inventory/product/new-product' do
  @manufacturer = Manufacturer.all()
  erb (:"product/new")
end
