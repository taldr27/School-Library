require_relative '../data/read_data'
module ListPerson
  include ShowBooks
  def show_person
    if @books.length > 1
      @people.each do |person|
        if person.key?('specialization')
          puts %([Teacher] Name: #{person['name']}, ID: #{person['id']}, Age: #{person['age']} Specialization: #{person['specialization']})
        else
          puts %([Student] Name: #{person['name']}, ID: #{person['id']} Age: #{person['age']})
        end
      end
    end
  end
end
