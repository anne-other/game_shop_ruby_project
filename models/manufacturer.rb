require_relative('../db/sql_runner.rb')

class Manufacturer

  attr_reader :id
  attr_accessor :manufacturer_name, :website, :contact_name, :email, :phone_number, :notes

  def initialize(options)
    @id = options['id'].to_i() if options['id']
    @manufacturer_name = options['manufacturer_name']
    @website = options['website']
    @contact_name = options['contact_name']
    @email = options['email']
    @phone_number = options['phone_number']
    @notes = options['notes']
  end

  def save()
    sql = "INSERT INTO manufacturers
    (
      manufacturer_name,
      website,
      contact_name,
      email,
      phone_number,
      notes
    )
    VALUES ($1, $2, $3, $4, $5, $6)
    RETURNING id"
    values = [@manufacturer_name, @website, @contact_name, @email, @phone_number, @notes]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i()
  end

end
