class Teacher < Student

    def initialize(name, age, topic, level)
        super(name, age, topic, level)
    end

    def self.all
        @@all.select {|person| person if person.class == Teacher}.uniq
    end

    def teach(human, subject)
        puts "You are imparting #{subject} knowledge on #{human.name}."
        human.topic = subject
        if self.age < 60
            human.level = "Beginner"
        elsif self.age > 60 
            human.level = "Advanced"
        end
    end
end