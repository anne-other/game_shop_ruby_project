require('sinatra')
require('sinatra/contrib/all')

require_relative('models/manufacturer.rb')
require_relative('models/product.rb')
also_reload('./models/*')

#NEW
get '/inventory/manufacturer/new-manufacturer' do
  erb (:"manufacturer/new")
end

#CREATE
post '/inventory/manufacturer' do
  @manufacturer = Manufacturer.new(params)
  @manufacturer.save()
  redirect to "/inventory"
end

#SHOW
get '/inventory/manufacturer/:id' do
  @manufacturer = Manufacturer.find(params['id'].to_i())
  erb (:"manufacturer/show")
end

#EDIT
get '/inventory/manufacturer/:id/edit' do
  @manufacturer = Manufacturer.find(params[:id])
  erb (:"manufacturer/edit")
end

#UPDATE
post '/inventory/manufacturer/:id' do
  Manufacturer.new(params).update()
  redirect to "/inventory/manufacturer/#{params['id']}"
end
