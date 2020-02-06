require 'pry'
require_relative '../config/environment'


baby = Human.new("Johnny")
baby.begin_education("Anime")
teenager = Human.promote(baby)
teenager.continue_education
teenager.continue_education
adult = Student.promote(teenager)

binding.pry
0