require_relative '../data/read_data'
module ListPerson
  include ShowBooks
  def show_person
    @people = read_people
    if @people.empty? && Teacher.all.empty?
      puts 'There\'s no people added yet'
    elsif @people.each do |person| 
        if person.has_key?("specialization")
          puts %([Teacher] Name: #{person["name"]}, ID: #{person["id"]}, Age: #{person["age"]} Specialization: #{person["specialization"]})
        else
          puts %([Student] Name: #{person["name"]}, ID: #{person["id"]} Age: #{person["age"]})
        end
      end
    end
  end
end
