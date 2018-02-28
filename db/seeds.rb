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
        "id": 1,
        "name": "Nike",
        "founded": 1964,
        "hq": "Beaverton, Oregon, United States"
    },
    {
        "id": 2,
        "name": "Adidas",
        "founded": 1949,
        "hq": "Herzogenaurach, Germany"
    },
    {
        "id": 3,
        "name": "Champion",
        "founded": 1919,
        "hq": "Winston-Salem, North Carolina, United States"
    },
    {
        "id": 4,
        "name": "Supreme",
        "founded": 1994,
        "hq": "New York City, New York, United States"
    },
    {
        "id": 6,
        "name": "Palace Skateboards",
        "founded": 2009,
        "hq": "London, England"
    },
    {
        "id": 7,
        "name": "Raf Simons",
        "founded": null,
        "hq": null
    },
    {
        "id": 8,
        "name": "Kanye West",
        "founded": null,
        "hq": null
    },
    {
        "id": 9,
        "name": "Riccardo Tisci",
        "founded": null,
        "hq": null
    },
    {
        "id": 11,
        "name": "Dover Street Market",
        "founded": 2004,
        "hq": "London, England"
    },
    {
        "id": 12,
        "name": "Pigalle",
        "founded": 2008,
        "hq": "Paris, France"
    },
    {
        "id": 13,
        "name": "Virgil Abloh",
        "founded": 2012,
        "hq": "Milan, Italy"
    },
    {
        "id": 15,
        "name": "Gosha Rubchinskiy",
        "founded": 2008,
        "hq": null
    },
    {
        "id": 16,
        "name": "Undefeated",
        "founded": 2002,
        "hq": "Los Angeles, California, United States"
    },
    {
        "id": 17,
        "name": "fragment design",
        "founded": 2003,
        "hq": "Tokyo, Japan"
    },
    {
        "id": 18,
        "name": "Yohji Yamamoto",
        "founded": 1972,
        "hq": "Tokyo, Japan"
    },
    {
        "id": 21,
        "name": "Sole Collector",
        "founded": 2003,
        "hq": "New York City, New York, United States"
    },
    {
        "id": 23,
        "name": "White Mountaineering",
        "founded": 2006,
        "hq": "Tokyo, Japan"
    },
    {
        "id": 24,
        "name": "Alexander Wang",
        "founded": 2005,
        "hq": "New York City, New York, United States"
    },
    {
        "id": 26,
        "name": "KAWS",
        "founded": null,
        "hq": null
    },
    {
        "id": 28,
        "name": "Stussy",
        "founded": 1980,
        "hq": "Irvine, California, United States"
    },
    {
        "id": 29,
        "name": "Pharrell",
        "founded": null,
        "hq": null
    },
    {
        "id": 30,
        "name": "Undercover",
        "founded": 1993,
        "hq": "Tokyo, Japan"
    },
    {
        "id": 31,
        "name": "Reigning Champ",
        "founded": 2007,
        "hq": "Vancouver, British Columbia, Canada"
    },
    {
        "id": 32,
        "name": "The North Face",
        "founded": 1968,
        "hq": "Alameda, California, United States",
        "collaborators": [
            {
                "id": 12,
                "brand_id": 32,
                "collection_id": 8,
                "created_at": "2018-02-13T00:20:38.019Z",
                "updated_at": "2018-02-13T00:20:38.019Z"
            }
        ]
    },
    {
        "id": 33,
        "name": "Louis Vuitton",
        "founded": 1854,
        "hq": "Paris, France"
    }
]

brand.each do |newBrand|
  Brand.create(id: newBrand.id, name: newBrand.name, founded: newBrand.founded, hq: newBrand.hq)
end

users = User.all
brands = Brand.all
puts "Created #{brands.count} brands"
puts "Created #{users.count} users"
