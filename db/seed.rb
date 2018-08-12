require_relative('../models/manufacturer.rb')
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

binding.pry
nil
