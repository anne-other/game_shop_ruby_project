require_relative('../db/sql_runner.rb')

class Product

  attr_reader :id
  attr_accessor :product_name, :description, :stock, :buying_cost, :selling_price, :manufacturer_id

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @product_name = options['product_name']
    @description = options['description']
    @stock = options['stock'].to_i()
    @buying_cost = '%.2f' % (options['buying_cost'].to_f())
    @selling_price = '%.2f' % (options['selling_price'].to_f())
    @manufacturer_id = options['manufacturer_id'].to_i()
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

  def update()
    sql = "UPDATE products SET
    (
      product_name,
      description,
      stock,
      buying_cost,
      selling_price,
      manufacturer_id
    )
    = ($1, $2, $3, $4, $5, $6)
    WHERE id = $7"
    values = [@product_name, @description, @stock, @buying_cost, @selling_price, @manufacturer_id, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM products WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM products"
    SqlRunner.run(sql)
  end

  def manufacturer()
    sql = "SELECT * FROM manufacturers WHERE id = $1"
    values = [@manufacturer_id]
    manufacturers = SqlRunner.run(sql, values)
    return Manufacturer.new(manufacturers.first)
  end

  def stock_check()
    case @stock
    when 0
      return "out_of_stock"
    when 1..5
      return "low_stock"
    else
      return "in_stock"
    end
  end

  def markup()
    buying_cost = @buying_cost.to_f()
    selling_price = @selling_price.to_f()
    markup_number = ((selling_price - buying_cost) / buying_cost) * 100
    markup_number = markup_number.round
    return markup_number
  end

  def self.all()
    sql = "SELECT * FROM products"
    products = SqlRunner.run(sql)
    return products.map { |product| Product.new(product)}
  end

  def self.find(id)
    sql = "SELECT * FROM products WHERE id = $1"
    values = [id]
    products = SqlRunner.run(sql, values)
    return Product.new(products.first)
  end

end
