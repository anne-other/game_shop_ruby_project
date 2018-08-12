require('minitest/autorun')
require('minitest/rg')

require_relative('../product.rb')

class ProductTest < MiniTest::Test

  def setup()
    @product1 = Product.new(
      {
        'product_name' => "Dungeons & Dragons Player's Handbook",
        'description' => "The player's handbook is the essetial reference for every Dungeons & Dragons roleplayer. It contains rules for character creation and advancement, battlegrounds and skills, exploration and combat, equipment, spells, and much more.",
        'stock' => 6,
        'buying_cost' => 20.00,
        'selling_price' => 27.99,
        'manufacturer_id' => 1
      }
    )
  end

  def test_stock_check_in_stock()
    result = @product1.stock_check()
    assert_equal("in_stock", result)
  end

end