require "./contact"



class ContactList



  def initialize(contacts = [])

    @contacts = contacts

  end



  #def add_contact(contact_to_add)

    #@contacts << contact_to_add

  #end



  #   def add_contact(contact_to_add)

  #    if contact_to_add.valid?

  #       @contacts << contact_to_add

  #     else

  #      puts "Invalid contact"

  #     end

  # end



  def add_contact(contact_to_add)

    return "Invalid contact" unless contact_to_add.valid?



    contact = self.search_by_name(contact_to_add.name)

    if contact.nil?

      @contacts << contact_to_add

    else

      contact.numbers << contact_to_add.numbers

    end

  end



  def present

   @contacts.each { |contact| puts contact.format_contact }

  end



  def search_by_name(name)

    @contacts.each do |contact|

      if contact.name == name

        return contact

      end

    end

    nil

  end



  def search_name(name)

    puts "I am searching for #{name}"



    @contacts.each do |contact|

      if contact.name == name

        return contact.numbers.first

      end

    end

    nil

  end



  def search_number(numbers)

    @contacts.each  {|contact| contact.numbers.include?(numbers) ? (return contact.name) : (return nil) }

  end



  def valid_contactlist?

    !contact.name.strip.empty? && !contact.numbers.empty?

  end

end



contact1 = Contact.new("  a  ","3333333333")

contact2 = Contact.new("giuditta", ["3497301187", "XXXXXXXXXX"])

contact3 = Contact.new("giuditta","ffffff" )



contactlist1 = ContactList.new

contactlist1.add_contact(contact1)

contactlist1.add_contact(contact2)

contactlist1.add_contact(contact3)

#contactlist1.add_contact(contact3)



#contactlist1.present

puts contactlist1.search_by_name("giuditta").inspect

#puts contactlist1.search_name("vvvv")

#contactlist1.search_number("")

#contactlist1.search_number("3333333333")

#contactlist1.search_number("XXXXXXXXXX")

#puts contactlist1.search_number("11111")