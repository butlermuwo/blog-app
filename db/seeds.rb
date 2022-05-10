# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

first_post = Post.create(author_id:1 , title: 'Hello, hach', text: 'This is my first post')
second_post = Post.create(author_id:2 , title: 'Hello, victor ', text: 'This is my second post')
third_post = Post.create(author_id:1 , title: 'Hello, hach ', text: 'This is my third post')
fourth_post = Post.create(author_id:2 , title: 'Hello, victor', text: 'This is my fourth post')

Comment.create(post: first_post, author_id: 1, text: 'Wonderful post' )
Comment.create(post: second_post, author_id: 2, text: 'I enjoyed second post' )
Comment.create(post: third_post, author_id: 2, text: 'I enjoyed third post' )
Comment.create(post: fourth_post, author_id: 1, text: 'I enjoyed fourth post' )
Comment.create(post: fifth_post, author_id: 2, text: 'I enjoyed fifth post' )
Comment.create(post: sixth_post, author_id: 1, text: 'I enjoyed sixth post' )