require('sinatra')
require('sinatra/contrib/all')

require_relative('models/manufacturer.rb')
require_relative('models/product.rb')
also_reload('./models/*')

#NEW
get '/inventory/product/new-product' do
  @manufacturers = Manufacturer.all()
  erb (:"product/new")
end

#CREATE
post '/inventory/product' do
  @product = Product.new(params)
  @product.save()
  redirect to "/inventory/product/#{@product.id}"
end

#SHOW
get '/inventory/product/:id' do
  @product = Product.find(params['id'].to_i())
  erb (:"product/show")
end

#EDIT
get '/inventory/product/:id/edit' do
  @product = Product.find(params[:id])
  @manufacturers = Manufacturer.all()
  erb (:"product/edit")
end

#UPDATE
post '/inventory/product/:id' do
  Product.new(params).update()
  redirect to "/inventory/product/#{params['id']}"
end

#DELETE
post '/inventory/product/:id/delete' do
  product = Product.find(params[:id])
  product.delete()
  redirect to "/inventory"
end
