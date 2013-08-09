City.find_or_create_by( name: "Toronto", subdomain: "toronto" )
City.find_or_create_by( name: "Ottawa", subdomain: "ottawa" )
City.find_or_create_by( name: "Montreal", subdomain: "montreal" )
City.find_or_create_by( name: "Vancouver", subdomain: "vancouver" )

Category.find_or_create_by( name: "For Sale" )
Category.find_or_create_by( name: "Community" ) 
Category.find_or_create_by( name: "Jobs" )
Category.find_or_create_by( name: "Housing" )


1.upto(4) do |i|
    Post.create(title: 'cats',
                description: "A product.",
                title: "Babysitting services",
                price: 9.99
                email: ''
                city: i,
                category_id: i)      
    Post.create(price: 9.99,
                description: "A product.",
                title: "Dog Food",
                location_id: i,
                category_id: 3,
                user_id: i)      
    Post.create(price: 9.99,
                description: "A product.",
                title: "4 br home",
                location_id: i,
                category_id: 5,
                user_id: i)      
    Post.create(price: 9.99,
                description: "A product.",
                title: "Downtown apartment for rent",
                location_id: i,
                category_id: 6,
                user_id: i)
  end