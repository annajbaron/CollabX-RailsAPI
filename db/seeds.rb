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
Collaborator.destroy_all
Collection.destroy_all
super_user = User.create(
  first_name: 'Guest',
  last_name: 'User',
  email: 'guest@example.com',
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
        "hq": "Beaverton, Oregon, United States",
        "collaborators": [
            {
                "id": 1,
                "brand_id": 1,
                "collection_id": 3
            },
            {
                "id": 3,
                "brand_id": 1,
                "collection_id": 4
            },
            {
                "id": 9,
                "brand_id": 1,
                "collection_id": 7
            },
            {
                "id": 7,
                "brand_id": 1,
                "collection_id": 6
            }
        ]
    },
    {
        "id": 2,
        "name": "Adidas",
        "founded": 1949,
        "hq": "Herzogenaurach, Germany",
        "collaborators": [
            {
                "id": 6,
                "brand_id": 2,
                "collection_id": 5
            },
            {
                "id": 15,
                "brand_id": 2,
                "collection_id": 10
            }
        ]
    },
    {
        "id": 3,
        "name": "Champion",
        "founded": 1919,
        "hq": "Winston-Salem, North Carolina, United States",
        "collaborators": []
    },
    {
        "id": 4,
        "name": "Supreme",
        "founded": 1994,
        "hq": "New York City, New York, United States",
        "collaborators": [
            {
                "id": 2,
                "brand_id": 4,
                "collection_id": 3
            },
            {
                "id": 8,
                "brand_id": 4,
                "collection_id": 6
            },
            {
                "id": 11,
                "brand_id": 4,
                "collection_id": 8
            },
            {
                "id": 17,
                "brand_id": 4,
                "collection_id": 11
            }
        ]
    },
    {
        "id": 5,
        "name": "Palace Skateboards",
        "founded": 2009,
        "hq": "London, England",
        "collaborators": [
            {
                "id": 5,
                "brand_id": 5,
                "collection_id": 5
            }
        ]
    },
    {
        "id": 6,
        "name": "Raf Simons",
        "collaborators": []
    },
    {
        "id": 7,
        "name": "Kanye West",
        "collaborators": []
    },
    {
        "id": 8,
        "name": "Riccardo Tisci",
        "collaborators": []
    },
    {
        "id": 9,
        "name": "Dover Street Market",
        "founded": 2004,
        "hq": "London, England",
        "collaborators": []
    },
    {
        "id": 10,
        "name": "Pigalle",
        "founded": 2008,
        "hq": "Paris, France",
        "collaborators": []
    },
    {
        "id": 11,
        "name": "Virgil Abloh",
        "founded": 2012,
        "hq": "Milan, Italy",
        "collaborators": [
            {
                "id": 4,
                "brand_id": 11,
                "collection_id": 4
            }
        ]
    },
    {
        "id": 12,
        "name": "Gosha Rubchinskiy",
        "founded": 2008,
        "collaborators": []
    },
    {
        "id": 13,
        "name": "Undefeated",
        "founded": 2002,
        "hq": "Los Angeles, California, United States",
        "collaborators": []
    },
    {
        "id": 14,
        "name": "fragment design",
        "founded": 2003,
        "hq": "Tokyo, Japan",
        "collaborators": []
    },
    {
        "id": 15,
        "name": "Yohji Yamamoto",
        "founded": 1972,
        "hq": "Tokyo, Japan",
        "collaborators": []
    },
    {
        "id": 16,
        "name": "Sole Collector",
        "founded": 2003,
        "hq": "New York City, New York, United States",
        "collaborators": []
    },
    {
        "id": 17,
        "name": "White Mountaineering",
        "founded": 2006,
        "hq": "Tokyo, Japan",
        "collaborators": []
    },
    {
        "id": 18,
        "name": "Alexander Wang",
        "founded": 2005,
        "hq": "New York City, New York, United States",
        "collaborators": [
            {
                "id": 16,
                "brand_id": 18,
                "collection_id": 10
            }
        ]
    },
    {
        "id": 19,
        "name": "KAWS",
        "collaborators": [
            {
                "id": 10,
                "brand_id": 19,
                "collection_id": 7
            }
        ]
    },
    {
        "id": 20,
        "name": "Stussy",
        "founded": 1980,
        "hq": "Irvine, California, United States",
        "collaborators": []
    },
    {
        "id": 21,
        "name": "Pharrell",
        "collaborators": []
    },
    {
        "id": 22,
        "name": "Undercover",
        "founded": 1993,
        "hq": "Tokyo, Japan",
        "collaborators": []
    },
    {
        "id": 23,
        "name": "Reigning Champ",
        "founded": 2007,
        "hq": "Vancouver, British Columbia, Canada",
        "collaborators": []
    },
    {
        "id": 24,
        "name": "The North Face",
        "founded": 1968,
        "hq": "Alameda, California, United States",
        "collaborators": [
            {
                "id": 12,
                "brand_id": 24,
                "collection_id": 8
            }
        ]
    },
    {
        "id": 25,
        "name": "Louis Vuitton",
        "founded": 1854,
        "hq": "Paris, France",
        "collaborators": [
            {
                "id": 18,
                "brand_id": 25,
                "collection_id": 11
            }
        ]
    }
]

collection =
[
    {
        "id": 4,
        "name": "Ten Nike Icons by Virgil Abloh",
        "date": "2017-11-09T00:00:00.000Z",
        "pictures": 11
    },
    {
        "id": 7,
        "name": "Jordan X KAWS Capsule",
        "date": "2017-11-27T00:00:00.000Z",
        "pictures": 3
    },
    {
        "id": 8,
        "name": "Supreme x The North Face FW17",
        "date": "2017-11-30T00:00:00.000Z",
        "pictures": 5
    },
    {
        "id": 5,
        "name": "Palace X adidas Originals Winter 2017",
        "date": "2017-10-27T00:00:00.000Z",
        "pictures": 4
    },
    {
        "id": 10,
        "name": "adidas Originals by Alexander Wang",
        "date": "2017-03-04T00:00:00.000Z",
        "pictures": 4
    },
    {
        "id": 11,
        "name": "Supreme x Louis Vuitton",
        "date": "2017-05-30T00:00:00.000Z",
        "pictures": 7
    },
    {
        "id": 3,
        "name": "NikeLab Air Humara X Supreme",
        "date": "2017-11-26T00:00:00.000Z",
        "pictures": 3
    },
    {
        "id": 6,
        "name": "Nike Air More Uptempo Supreme",
        "date": "2017-04-27T00:00:00.000Z",
        "pictures": 9
    }
]

collection.each do |newCollection|
  Collection.create(id: newCollection[:id], name: newCollection[:name], date: newCollection[:date], pictures: newCollection[:pictures])
end

brand.each do |newBrand|
  Brand.create(id: newBrand[:id], name: newBrand[:name], founded: newBrand[:founded], hq: newBrand[:hq])
  newBrand[:collaborators].each do |newCollaborator|
    Collaborator.create(id: newCollaborator[:id], brand_id: newCollaborator[:brand_id], collection_id: newCollaborator[:collection_id])
  end
end



collections = Collection.all
collaborators = Collaborator.all
users = User.all
brands = Brand.all


puts "Created #{collections.count} collections"
puts "Created #{collaborators.count} collaborators"
puts "Created #{brands.count} brands"
puts "Created #{users.count} users"
