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

manufacturer1.save()

binding.pry
nil
