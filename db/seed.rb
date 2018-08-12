require_relative('../models/manufacturer.rb')
require_relative('../models/product.rb')
require('pry')

Manufacturer.delete_all()

manufacturer1 = Manufacturer.new(
  {
    'manufacturer_name' => "Wizards of the Coast",
    'website' => "http://company.wizards.com/",
    'contact_name' => "A. Wizard",
    'email' => "a.wizard@wizardsofthecoast.com",
    'phone_number' => "(425) 226-6500",
    'notes' => "Based in America so hard to get in contact with during normal working hours. They are pretty good at responding to emails though."
  }
)

manufacturer2 = Manufacturer.new(
  {
    'manufacturer_name' => "DnDice",
    'website' => "https://www.dndice.co.uk/",
    'contact_name' => "D. Dicey",
    'email' => "d.dicey@dndice.co.uk",
    'phone_number' => "0800 000 000",
    'notes' => "Hard to get hold of contact details, but friendly and eager to supply local gaming stores."
  }
)

manufacturer1.save()
manufacturer2.save()

product1 = Product.new(
  {
    'product_name' => "Dungeons & Dragons Player's Handbook",
    'description' => "The player's handbook is the essetial reference for every Dungeons & Dragons roleplayer. It contains rules for character creation and advancement, battlegrounds and skills, exploration and combat, equipment, spells, and much more.",
    'stock' => 6,
    'buying_cost' => 20.00,
    'selling_cost' => 27.99,
    'manufacturer_id' => manufacturer1.id()
  }
)

product1.save()

binding.pry
nil
