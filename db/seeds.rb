# USERS

users = [{
  :name => "Butler",
  :photo => "https://randomuser.me/api/portraits/men/87.jpg",
  :bio => "Full-stack Web developer"
},{
  :name => "Victor",
  :photo => "https://randomuser.me/api/portraits/women/60.jpg",
  :bio => "Fashion Designer"
},{
  :name => "Janet",
  :photo => "https://randomuser.me/api/portraits/women/31.jpg",
  :bio => "News Reporter"
},{
  :name => "Big Sam",
  :photo => "https://randomuser.me/api/portraits/men/34.jpg",
  :bio => "Soccer Player"
},
{
  :name => "kay wizzy",
  :photo => "https://randomuser.me/api/portraits/men/20.jpg",
  :bio => "Professional DJ"
},
{
  :name => "Diana",
  :photo => "https://randomuser.me/api/portraits/women/20.jpg",
  :bio => "Poetess and author"
},
{
  :name => "Tommy",
  :photo => "https://randomuser.me/api/portraits/women/22.jpg",
  :bio => "Public figure"
}]

users.each do |user|
  User.create(name: user[:name], photo: user[:photo], bio: user[:bio])
end
