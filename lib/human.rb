class Human
    attr_accessor :name, :age, :topic, :level

    @@all = []

    def initialize(name, age=5, topic="Undecided", level= "Uneducated")
        @name = name
        @age = age
        @topic = topic
        @level = level
        @@all << self
    end

    def self.all 
        @@all
    end

    def begin_education(topic)
        self.topic = topic
        self.level = "Beginner"
        self.age += 1
    end

    def frustrated
        puts "I am not enjoying this right now."
    end
    
    def self.promote(object)
        # binding.pry
        if object.topic == "Undecided" || object.level == "Uneducated"
            puts "You may not be promoted. Learn."
        else
            teenager = Student.new(object.name, object.age, object.topic, object.level)
            puts "Congratulations #{object.name}, you have been promoted."
        end
        return teenager 
    end

    def reset
        self.topic = "Undecided"
        self.level = "Uneducated"
    end
end