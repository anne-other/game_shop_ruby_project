require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('manufacturer_controller.rb')
require_relative('product_controller.rb')
require_relative('models/manufacturer.rb')
require_relative('models/product.rb')
also_reload('./models/*')

#INDEX
get '/inventory' do
  @manufacturers = Manufacturer.no_product()
  @products = Product.all()
  erb (:index)
end
