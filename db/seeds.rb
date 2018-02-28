# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PASSWORD = 'hello'
User.destroy_all
Brand.destroy_all
super_user = User.create(
  first_name: 'Anna',
  last_name: 'Baron',
  email: 'ab@gmail.com',
  password: PASSWORD
)
10.times.each do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(
    first_name: first_name,
    last_name: last_name,
    email: "#{first_name.downcase}.#{last_name.downcase}@example.com",
    password: PASSWORD
  )
end

brand =
[
    {
        "name": "Nike",
        "founded": 1964,
        "hq": "Beaverton, Oregon, United States"
    },
    {
        "name": "Adidas",
        "founded": 1949,
        "hq": "Herzogenaurach, Germany"
    },
    {
        "name": "Champion",
        "founded": 1919,
        "hq": "Winston-Salem, North Carolina, United States"
    },
    {
        "name": "Supreme",
        "founded": 1994,
        "hq": "New York City, New York, United States"
    },
    {
        "name": "Palace Skateboards",
        "founded": 2009,
        "hq": "London, England"
    },
    {
        "name": "Raf Simons"
    },
    {
        "name": "Kanye West"
    },
    {
        "name": "Riccardo Tisci"
    },
    {
        "name": "Dover Street Market",
        "founded": 2004,
        "hq": "London, England"
    },
    {
        "name": "Pigalle",
        "founded": 2008,
        "hq": "Paris, France"
    },
    {
        "name": "Virgil Abloh",
        "founded": 2012,
        "hq": "Milan, Italy"
    },
    {
        "name": "Gosha Rubchinskiy",
        "founded": 2008
    },
    {
        "name": "Undefeated",
        "founded": 2002,
        "hq": "Los Angeles, California, United States"
    },
    {
        "name": "fragment design",
        "founded": 2003,
        "hq": "Tokyo, Japan"
    },
    {
        "name": "Yohji Yamamoto",
        "founded": 1972,
        "hq": "Tokyo, Japan"
    },
    {
        "name": "Sole Collector",
        "founded": 2003,
        "hq": "New York City, New York, United States"
    },
    {
        "name": "White Mountaineering",
        "founded": 2006,
        "hq": "Tokyo, Japan"
    },
    {
        "name": "Alexander Wang",
        "founded": 2005,
        "hq": "New York City, New York, United States"
    },
    {
        "name": "KAWS"
    },
    {
        "name": "Stussy",
        "founded": 1980,
        "hq": "Irvine, California, United States"
    },
    {
        "name": "Pharrell"
    },
    {
        "name": "Undercover",
        "founded": 1993,
        "hq": "Tokyo, Japan"
    },
    {
        "name": "Reigning Champ",
        "founded": 2007,
        "hq": "Vancouver, British Columbia, Canada"
    },
    {
        "name": "The North Face",
        "founded": 1968,
        "hq": "Alameda, California, United States"
    },
    {
        "name": "Louis Vuitton",
        "founded": 1854,
        "hq": "Paris, France"
    }
]

brand.each do |newBrand|
  Brand.create(name: newBrand.name, founded: newBrand.founded, hq: newBrand.hq)
end

users = User.all
brands = Brand.all
puts "Created #{brands.count} brands"
puts "Created #{users.count} users"
