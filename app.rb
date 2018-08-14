require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('manufacturer_controller.rb')
require_relative('product_controller.rb')
require_relative('models/manufacturer.rb')
require_relative('models/product.rb')
also_reload('./models/*')

require("pry")

#INDEX
get '/inventory' do
  @manufacturers = Manufacturer.all()
  @manufacturers_other = Manufacturer.no_product()
  @products = Product.all()
  erb (:index)
end

#FILTER
post '/inventory' do
  @manufacturer = Manufacturer.find(params["manufacturer_id"])
  @products = Product.all()
  @check = @manufacturer.check_has_no_product()
  erb (:filter)
end
