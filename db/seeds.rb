City.find_or_create_by( name: "Toronto", subdomain: "toronto" )
City.find_or_create_by( name: "Ottawa", subdomain: "ottawa" )
City.find_or_create_by( name: "Montreal", subdomain: "montreal" )
City.find_or_create_by( name: "Vancouver", subdomain: "vancouver" )

Category.find_or_create_by( name: "For Sale" )
Category.find_or_create_by( name: "Community" ) 
Category.find_or_create_by( name: "Jobs" )
Category.find_or_create_by( name: "Housing" )
