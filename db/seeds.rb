# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.create(title: "James Roel at 17yrs old", body: "Here is a photo of my grandfather before he went off to war during WW2.  He was stationed on the USS Colorado and was attacked and injured during a battle at sea.", image: 'https://github.com/BRoel/feed-it_frontend/blob/main/public/images/James%20H.%20Roel%20USS%20Colorado.jpeg?raw=true')

# post.image.attach(
#     io: File.open('./public/images/01.jpeg'),
#     filename: '01.jpeg',
#     content_type: 'image/jpeg'
# )

Post.create(title: "James Roel Honor Flight Chicago", body: "Here is my grandfather during the Honor Flight Chicago in ", image: "https://github.com/BRoel/feed-it_frontend/blob/main/public/images/100_0196.JPG?raw=true")
Post.create(title: "James and Rand Roel Honor Flight Chicago", body: "Here is my grandfather and father during the Honor Flight Chicago in ", image: "https://github.com/BRoel/feed-it_frontend/blob/main/public/images/100_0219.JPG?raw=true")

comment = Comment.create(post_id: 1, content: "First Comment")