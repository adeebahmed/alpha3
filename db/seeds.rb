User.destroy_all
Liftdatum.destroy_all

lifts = Array["Bench Press", "Deadlift", "Squat","Bench Press", "Deadlift", "Squat","Bench Press", "Deadlift", "Squat", "Bench Press", "Deadlift"]
users = Array["Adeeb Ahmed", "Eric Ng", "Karl stolley", "jane doe", "john doe"]

(0..4).each do |i|
  user = User.create(id: i,firstname: users[i].split(" ")[0], lastname: users[i].split(" ")[1],
                     height: 70 +i, weight: 170 + (i*5), age:20+i, date: "#{(i*-1).days.ago}")

  (1..10).each do |j|
    liftdata = Liftdatum.create(exercise: lifts[j], set: 11-j, rep: j, weight: j*25,
                                created_at: "#{((j*2)-j).days.ago}", user: user)
  end
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
