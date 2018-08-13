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
