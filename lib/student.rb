class Student < Human

    def initialize(name, age, topic, level)
        super(name, age, topic, level)
    end

    def self.all
        @@all.select {|person| person if person.class == Student}.uniq
    end

    def continue_education
        self.age += 5
        if self.level == "Beginner"
            self.level = "Intermediate"
            puts "You are now #{self.level}"
        elsif self.level == "Intermediate"
            self.level = "Advanced"
            puts "Congratulations, you are #{self.level} and ready to move on towards enlightment."
        else 
            puts "You are enjoying your studies."
        end
    end

    def self.promote(student)
        if student.level != "Advanced"
            puts "You may not be promoted. LEARN."
        else
            adult = Teacher.new(student.name, student.age, student.topic, student.level)
            puts "Congratulations #{student.name}, you have reached enlightenment."
        end
        return adult
    end
    
end