User.destroy_all
Liftdata.destroy_all

(1..5).each do |i|
  user = User.create(firstname: "Adeeb#{i}", lastname: "Ahmed#{i}", height: "70", weight:"175", age:"21)
 
  (1..10).each do |j|
    liftdata = Liftdata.create(exercise: "exercise no: #j", sets: j, reps: j*2, weight: j*100)  
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
