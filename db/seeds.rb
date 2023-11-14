# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {
        name: "Frae",
        country: "Philippines"
    },
    {
        name: "John",
        country: "Australia"
    }
])

Item.create([
    {
        name: "Apple iPhone 15",
        price: 2500.00
    },
    {
        name: "Apple Macbook",
        price: 3000.00
    },
    {
        name: "White T-Shirt",
        price: 5.99
    },
    {
        name: "Black Shoes",
        price: 10.00
    }
])