# Inheritance with Ruby

A practice in using inheritance with Ruby.

## Human -> Student -> Teacher Pipeline

I created a simple CLI app for creating Humans and turning them into students, and after education, teachers of any topic you'd like.


## How It Works

Begin by initializing a human. All you have to provide is a name.

```ruby
johnny = Human.new("Johnny")
```

Humans are also initialized with:
- Age *(default to 5)*
- Topic *(default to "Undecided")*
- Level *(default to "Uneducated")*

These attributes will matter when trying to progress to a student, or teacher.

### A Human Begins their Study
```ruby 
johnny.begin_education("Math")
   #this method accepts a string
   #and sets that as Johnny's topic of study. 
   #It also advances their level, and increases age by one year.

johnny.topic #=> "Math"
johnny.level #=> "Beginner"
```

After becoming a beginner you can promote a Human instance to a Student instance.

```ruby
johnny = Human.promote(johnny)
   #=> Overwrite our old Johnny variable, with a new and improved Johnny.
```

## A Students Path
### Continuing to study
Just as you can promote a Human to a Student, you can promote a Student to a Teacher. Not everyone has the skill to be a teacher though. Trying to promote a Student object that hasn't reached advanced level will return a message.

A student must continue education twice to become advanced. A Student's age is increased by 5 years each time continue_education is called.
```ruby
#first study session
johnny.continue_education
   #=> johnny.level #=> "Intermediate"
   #Not quiet ready to become a Teacher.

#second study session
johnny.continue_education
   #=> johnny.level #=> "Advanced"
   #You are now enlightened in your topic, and you can become a teacher.

Student.promote(johnny)

   
```



## The Way of a Teacher

Teacher is the master class in this relationship. Having reached this level you can continue to study and add to your years of experience ("age") or you can teach a student. 

### Imparting knowledge

If a teacher is very experienced (age > 60) they can immediately promote a human or student to advanced, allowing them to become a teacher of the topic.



### Other Features.

With built in functions all humans can express frustration, and reset their area of study and level of understanding. Remember, teachers and students are children of the parent class Human. All Teachers can be Human, but not all Humans can be Teachers.

```ruby
johnny.frustrated
   #=> "I am not enjoying this right now."
johnny.reset
   #=>
```







## Ending notes.
Currently the All function for each class is a bit funky.