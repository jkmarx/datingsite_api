# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Profile.delete_all
User.delete_all
Image.delete_all

user1=User.create!(username: 'Alan', email: 'alan@testing.com', password: "85673026")

user2=User.create!(username: 'Ada', email: 'ada@lordbyron.com', password: "8567302M")

user3=User.create!(username: 'Grace', email: 'grace@hopper.com', password: "8N673026")

user4=User.create!(username: 'Linus', email: 'linus@linux.com', password: "8567302OL")

user5=User.create!(username: 'Rasmus', email: 'toothbrush@php.com', password: "856730K6")

prof1=Profile.create!(user_id: user1.id , age: 31, seeking:'platonic', gender:'other', languages: ['Ruby', 'PHP', 'Javascript'], bio:'I like pair programming and long walks on the beach')

prof2=Profile.create!(user_id: user2.id, age: 54, seeking:'platonic', gender:'female', languages: ['Babbage', 'Javascript', 'C++', 'Ada'], bio:'I want to meet nice people for lunch and talk about Project Euler problems!')

prof3=Profile.create!(user_id: user3.id, age: 22, seeking:'romantic', gender:'other', languages: ['COBOL', 'PHP', 'Fortran', 'Javascript'], bio:'Looking for a long term and RESTful relationship')

prof4=Profile.create!(user_id: user4.id, age: 45, seeking:'both', gender:'male', languages: ['Ruby', 'PHP', 'C#'], bio:'Benevolent dictator seeks romantic partners and open-source collaborators')

prof5=Profile.create!(user_id: user5.id, age: 35, seeking:'romantic', gender:'male', languages: ['PHP', 'Ruby', 'Python'], bio:'Stable and employed')

images = Image.create([
  {url:"https://s3.amazonaws.com/datingapp-wdi/uploads/download.jpeg"},
  {url:"https://s3.amazonaws.com/datingapp-wdi/uploads/e94c765eccf119e8c8f351747788d74b.jpg"},
  {url:"https://s3.amazonaws.com/datingapp-wdi/uploads/images+(1).jpeg"},
  {url:"https://s3.amazonaws.com/datingapp-wdi/uploads/images+(2).jpeg"},
  {url:"https://s3.amazonaws.com/datingapp-wdi/uploads/images.jpeg"}])

prof1.images << images[0];
prof2.images << images[1];
prof3.images << images[2];
prof4.images << images[3];
prof5.images << images[4];

locations = Location.create([{region: "Metro Boston"}, {region: "North Shore"}, {region: "North West"}, {region: " Metro West"},{region: "South Shore"}, {region: "Central Mass"}, {region: "Cape Cod"} ])

Location.first.profiles << [prof1, prof2, prof3, prof4, prof5];
