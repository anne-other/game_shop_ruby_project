require_relative('../models/manufacturer.rb')
require_relative('../models/product.rb')
require('pry')

Product.delete_all()
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

manufacturer3 = Manufacturer.new(
  {
    'manufacturer_name' => "Fun Forge",
    'website' => "http://www.funforge.fr/US/",
    'contact_name' => "F. Forger",
    'email' => "f.forger@funforge.com",
    'phone_number' => "+33 000 000",
    'notes' => "Based in France, but have good connections across the globe"
  }
)

manufacturer4 = Manufacturer.new(
  {
    'manufacturer_name' => "Fantasy Flight Games",
    'website' => "https://www.fantasyflightgames.com/en/index/",
    'contact_name' => "F. Flighty",
    'email' => "f.flighty@fantasyflightgames.com",
    'phone_number' => "0800 000 000",
    'notes' => "One of the biggest game producers, we need to try and get hold of X-Wing"
  }
)

manufacturer5 = Manufacturer.new(
  {
    'manufacturer_name' => "Chessex",
    'website' => "http://www.chessex.com/",
    'contact_name' => "C.Dicey",
    'email' => "c.dicey@chessex.com",
    'phone_number' => "0800 000 000",
    'notes' => "Largest dice manufacturer in the UK"
  }
)

manufacturer1.save()
manufacturer2.save()
manufacturer3.save()
manufacturer4.save()
manufacturer5.save()

product1 = Product.new(
  {
    'product_name' => "Dungeons & Dragons Player's Handbook",
    'description' => "The player's handbook is the essetial reference for every Dungeons & Dragons roleplayer. It contains rules for character creation and advancement, battlegrounds and skills, exploration and combat, equipment, spells, and much more.",
    'stock' => 6,
    'buying_cost' => 20.00,
    'selling_price' => 27.99,
    'manufacturer_id' => manufacturer1.id()
  }
)

product2 = Product.new(
  {
    'product_name' => "Magic The Gathering Core 2019 Deck Builders Toolkit",
    'description' => "Take your collection to the next level with a core set 2019 deck builder's Toolkit, offering more than 250 cards and an assortment of deck-building aids so you can make decks that are truly your own.",
    'stock' => 0,
    'buying_cost' => 10.00,
    'selling_price' => 19.99,
    'manufacturer_id' => manufacturer1.id()
  }
)

product3 = Product.new(
  {
    'product_name' => "Prismatic Chromatic Dragon Dice Set",
    'description' => "Vampires driving you batty? A full solid metal set of 7 poly dice coated in a prismatic flame touched finish with white inking is here is here to help vanquish evil! Named 'Prismatic Chromatic Dragon', each set comes with a d20, d12, d10, d8, d6, d4 and a percentile die complete with a black metal carry tin with the Chromatic insignia",
    'stock' => 2,
    'buying_cost' => 25.00,
    'selling_price' => 29.95,
    'manufacturer_id' => manufacturer2.id()
  }
)

product4 = Product.new (
  {
    'product_name' => "Tokaido",
    'description' => "With new artwork from Naade, new graphics design for the cards, new panorama pictures for travelers to combine, and a fresh new graphical look, the Tokaido 5th Anniversary Edition will be both a new product that stands on its own while also continuing the tradition of elegance and beauty that everyone expects from this beloved brand!In Tokaido, each player is a traveler crossing the 'East sea road', one of the most magnificent roads of Japan",
    'stock' => 10,
    'buying_cost' => 30.00,
    'selling_price' => 34.99,
    'manufacturer_id' => manufacturer3.id()
  }
)

product5 = Product.new(
  {
    'product_name' => "Dungeons & Dragons Dungeon Masters Guide",
    'description' => "Master's guide for the roleplay game D&D Dungeons and Dragons.",
    'stock' => 8,
    'buying_cost' => 20.00,
    'selling_price' => 27.99,
    'manufacturer_id' => manufacturer1.id()
  }
)

product1.save()
product2.save()
product3.save()
product4.save()
product5.save()


# binding.pry
# nil
