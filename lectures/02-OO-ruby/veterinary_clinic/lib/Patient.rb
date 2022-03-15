class Patient
    attr_reader :id
    attr_accessor :name, :species, :age, :owner, :phone

    @@all = []

    #invoked via .new
    def initialize(id, name, species, age, owner, phone)
        @id = id    
        @name = name
        @species = species
        @age = age
        @owner = owner
        @phone = phone

        #here self represents each instance of our class Patient
        @@all << self
    end

    #here self represents our class Patient
    def self.all
        @@all
    end

    #here self represents each instance of our class Patient
    def give_name
        self.name
    end
end