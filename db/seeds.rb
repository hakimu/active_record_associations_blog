# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Comment.destroy_all

user_names = ["Hakimu","Ronald","Jackson","Alanna","Shay","Jackson","Cade","Ronald","Jackson","Heidi","Ann","Christensen"]
email_address = ["@example.com","@example.net","@fake.com","@fake.net"]
paragraph_one = "Hoodie +1 ennui butcher next level vice. Green juice tattooed sustainable heirloom slow-carb, taxidermy gochujang. Vaporware edison bulb gastropub, ennui mumblecore PBR&B austin ramps kale chips four loko aesthetic swag palo santo chillwave drinking vinegar. Hammock knausgaard mixtape chillwave typewriter bicycle rights copper mug vaporware, hot chicken tilde craft beer chambray semiotics. IPhone shabby chic pitchfork master cleanse unicorn. Gochujang ugh distillery, you probably haven't heard of them pok pok fanny pack freegan edison bulb trust fund. Chicharrones art party narwhal master cleanse, crucifix affogato af humblebrag fanny pack vegan mustache. Everyday carry ennui unicorn helvetica, biodiesel listicle cray letterpress vape adaptogen jianbing"

50.times do
  name = user_names.shuffle.last
  email_list = email_address.shuffle.last
  user = User.new
  user.username = name
  user.email = name+email_list
  user.save!
end

puts "Created #{User.count} users"

50.times do
  comment = Comment.new
  comment.description = paragraph_one
  comment.save!
end

puts "Created #{User.count} users"
puts "Created #{Comment.count} comments"

