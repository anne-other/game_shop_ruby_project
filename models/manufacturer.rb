require_relative('db/sql_runner.rb')

class Manufacturer

  def initialize(options)
    @manufacturer_name = options['manufacturer_name']
    @website = options['website']
    @contact_name = options['contact_name']
    @email = options['email']
    @phone_number = options['phone_number']
    @notes = options['notes']
  end

end
