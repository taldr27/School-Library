module ListRentalId
  def list_rental_id
    if Person.all.empty? && Book.all.empty? && @rentals.length < 1
      puts "This => #{@rentals.length}" 
      puts 'Please add a person and a book first!'
    elsif Rental.all.empty? && @rentals.length > 1
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      @rentals.each do |rental|
        if rental["person"] == id_selected 
          puts rental
        end
      end
    elsif !Rental.all.empty? && @rentals.length < 1
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      Rental.all.each do |rental|
        if rental.person.id == id_selected
          puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
        else
          puts 'There\'s no rental with that ID'
        
        end
      end
    else 
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      @rentals.each do |rental|
        if rental["person"] == id_selected 
          puts rental
        end
      end
      Rental.all.each do |rental|
        if rental.person.id == id_selected
          puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
        # else
          # puts 'There\'s no rental with that ID'
        end
      end
    end
  end
end
