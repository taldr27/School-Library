module ListRentalId
  def list_rental_id
    if @rentals.empty?
      puts 'Please add a person and a book first!'
    elsif @rentals.length > 1
      print 'ID of person: '
      id_selected = gets.chomp.to_i
      @rentals.each do |rental|
        if rental.person == id_selected
          puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
        else
          puts 'There\'s no rental with that ID'
        end
      end
    end
  end
end

# module ListRentalId
#   def list_rental_id
#     if @rentals.empty?
#       puts 'Please add a person and a book first!'
#     else @rentals.length > 1
#       print 'ID of person: '
#       id_selected = gets.chomp.to_i
#       @rentals.each do |rental|
#         if rental.person.id == id_selected
#           puts %(#{rental.date}, Book "#{rental.book.title}" by #{rental.book.author}, rented by #{rental.person.name})
#         else
#           puts 'There\'s no rental with that ID'
#         end
#       end
#     end
#   end
# end
