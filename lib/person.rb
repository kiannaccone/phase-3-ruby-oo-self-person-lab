require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account  

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= (new_happiness)
        if new_happiness >= 0 && new_happiness <=10
            @happiness = new_happiness
        elsif new_happiness < 0 
            @happiness = 0
        else 
            @happiness = 10
        end
    end
  
    def hygiene=(new_hygiene)
        if new_hygiene >= 0 && new_hygiene <=10
            @hygiene = new_hygiene
        elsif new_hygiene < 0 
            @hygiene = 0 
        elsif new_hygiene > 10
            @hygiene = 10
        end
    end

  
end

katherine = Person.new("Katherine")
puts katherine.name
