class Contact
  attr_accessor :name, :numbers
  def initialize(name, numbers=[])
    @name = name
    @numbers = numbers
  end

  def add_number(new_number)
    numbers << new_number #agregar un número nuevo dentro del array.
  end

  def valid?
    !name.strip.empty? && numbers.map {|item| !item.strip.empty?} #Aquí usé dos métodos de strings, strip que es para eliminar los espacios vacíos entre los strings, y empty? para ver si el string está vacío o no (regresa un false or true).
  end
end

first_contact = Contact.new("yo", ["494294234823", "43534534534"])
puts first_contact
