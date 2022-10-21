class Person
    @@isAdmin = false

    def initialize(name, age, gender)
        @person_name = name
        @person_age = age
        @person_gender = gender
    end

    def getName
        puts "#{@person_name}"
    end

    def getStatus
        return @@isAdmin
    end
end

blake = Person.new("Blake", 20, "Male")

blake.getName
puts blake.getStatus