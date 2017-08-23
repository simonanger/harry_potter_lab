require_relative('../models/students.rb')
require_relative('../models/houses.rb')
require ('pry')

student1 = Student.new({
  'first_name' => "Harry",
  'second_name' => "Potter",
  'house' => "Gryffindor",
  'age' => 22,
  })

  student2 = Student.new({
    'first_name' => "Ron",
    'second_name' => "Weasley",
    'house' => "Gryffindor",
    'age' => 21,
    })

  house1 = House.new({
    'name' => "Gryffindor",
    'logo' => "https://vignette2.wikia.nocookie.net/harrypotter/images/b/b7/Gryffindorkollegie.jpg/revision/latest?cb=20090315133119&path-prefix=da"
    })

  house2 = House.new({
    'name' => "Ravenclaw",
    'logo' => "https://vignette4.wikia.nocookie.net/harrypotter/images/0/03/Ravenclawkollegie.jpg/revision/latest?cb=20090317182254&path-prefix=da"
    })

  house3 = House.new({
    'name' => "Hufflepuff",
    'logo' => "https://vignette3.wikia.nocookie.net/harrypotter/images/e/e4/Hufflepuff.jpg/revision/latest?cb=20110817075555"
    })

  house4 = House.new({
    'name' => "Slytherin",
    'logo' => "https://vignette4.wikia.nocookie.net/harrypotter/images/a/ab/CAAFRFNLCA3ACM21CA5B44OUCAJAR3OKCA20W3Q6CAMBZJCGCAD7R274CAWBYIJUCATUQMJHCAHBBNO0CA1BPNPZCANGY3HZCAR2CP9LCA2U3QG8CAD993TECA2J6UVOCAEJGIRFCA3YOQUV.jpg/revision/latest?cb=20110318122233&path-prefix=da"
    })

  house1.save
  house2.save
  house3.save
  house4.save

  binding.pry
  nil
