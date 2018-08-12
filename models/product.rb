require_relative('../db/sql_runner.rb')

class Product

  attr_reader :id
  attr_accessor :product_name, :description, :stock, :buying_cost, :selling_price, :manufacturer_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @product_name = options['product_name']
    @description = options['description']
    @stock = options['stock']
    @buying_cost = options['buying_cost']
    @selling_price = options['selling_price']
    @manufacturer_id = options['manufacturer_id']
  end

end
