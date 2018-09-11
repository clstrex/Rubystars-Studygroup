require "./class_contact"

class ContactList
  def initialize(contacts=[]) #La mayoría de las clases necesitan un initialize para empezar. En este caso mi parámetro será un array.
    @contacts = contacts
  end

  def add_contact(new_contact)
    @contacts << new_contact #Si voy a usar la variable dentro del mismo método, puedo ponerle un arroba. Si no, tengo que usar el attribute reader o accessor.
    if new_contact.valid? == false
      puts "No valid contact"
    else new_contact.valid? == true
      @contacts << new_contact
    end
  end

  def search(searchword)
    searchword.each do |name, numbers|
      if searchword == name
        puts numbers
      elsif searchword == numbers
        puts name
      else
        puts nil
      end
    end
  end

end






contact_list = ContactList.new
contact_list.search("lalala")
