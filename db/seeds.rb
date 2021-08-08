# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.create(title: "First Post", body: "First Body")

# post.image.attach(
#     io: File.open('./public/images/01.jpeg'),
#     filename: '01.jpeg',
#     content_type: 'image/jpeg'
# )

Post.create(title: "Second Post", body: "Second Body")
Post.create(title: "Third Post", body: "Third Body")

comment = Comment.create(post_id: 1, content: "First Comment")