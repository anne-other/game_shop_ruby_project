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

  def save()
    sql = "INSERT INTO products
    (
      product_name,
      description,
      stock,
      buying_cost,
      selling_price,
      manufacturer_id
    )
    VALUES ($1, $2, $3, $4, $5, $6)
    RETURNING id"
    values = [@product_name, @description, @stock, @buying_cost, @selling_price, @manufacturer_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i()
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

end
