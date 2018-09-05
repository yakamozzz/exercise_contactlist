class Contact

  attr_accessor :name, :numbers

  def initialize(name, numbers=[])
    @name = name
    @numbers = numbers
  end

  def add_number(number_to_add)
      numbers << number_to_add
      
  end

  def valid?
      !name.strip.empty? && !numbers.empty? 
  end

  def format_contact
    "Name: #{@name}, Number: #{@numbers}"
  end
end