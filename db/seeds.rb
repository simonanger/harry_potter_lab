require_relative('../models/students.rb')
require ('pry')

student1 = Student.new({
  'first_name' => "Harry",
  'second_name' => "Potter",
  'house' => "Griffindor",
  'age' => 22,
  })

  student2 = Student.new({
    'first_name' => "Ron",
    'second_name' => "Weasley",
    'house' => "Griffindor",
    'age' => 21,
    })

    student1.save
    student2.save

  binding.pry
  nil
