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
  redirect("/inventory")
end

#SHOW
get '/inventory/manufacturer/:id' do
  @manufacturer = Manufacturer.find(params['id'].to_i())
  erb (:"manufacturer/show")
end
