# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('users')
User.create!([
{name: "Polina", email: "PolinaParff@mail.ru", password: "123456"},
{name: "Sergey", email: "SergeyPark@mail.ru", password: "123456"},
{name: "Polina", email: "polina.parfenova.01@mail.ru", password: "123456"},
])
# password: "aaa555*" в 14 строке было

Image.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('images')
Image.create([
{name: 'Кухня "Cyan"', file: 'kitchen_1.jpg', theme_id: 1},
{name: 'Кухня "Brilliance"', file: 'kitchen_2.jpg', theme_id: 1},
{name: 'Кухня "Light"', file: 'kitchen_3.jpg', theme_id: 1},
{name: 'Кухня "The Dark Knight"', file: 'kitchen_4.jpg', theme_id: 1},

{name: 'Гостиная "Soft comfort"', file: 'livingroom_1.jpg', theme_id: 2},
{name: 'Гостиная "The ascetic"', file: 'livingroom_2.jpg', theme_id: 2},
{name: 'Гостиная "Chanel And Velvet"', file: 'livingroom_3.jpg', theme_id: 2},
{name: 'Гостиная "Pink dream"', file: 'livingroom_4.jpg', theme_id: 2},

{name: 'Ванная "Woodland"', file: 'bathroom_1.jpg', theme_id: 3},
{name: 'Ванная "Winding river"', file: 'bathroom_2.jpg', theme_id: 3},
{name: 'Ванная "Rock"', file: 'bathroom_3.jpg', theme_id: 3},

{name: 'Спальня "Japanese minimalism"', file: 'bedroom_1.jpg', theme_id: 4},
{name: 'Спальня "Strength of character"', file: 'bedroom_2.jpg', theme_id: 4},
{name: 'Спальня "Retro aesthetics"', file: 'bedroom_3.jpg', theme_id: 4},

{name: 'Детская "Mountains"', file: 'childrenroom_1.jpg', theme_id: 5},
{name: 'Детская "Pink paradise"', file: 'childrenroom_2.jpg', theme_id: 5},
{name: 'Детская "Young Columbus"', file: 'childrenroom_3.jpg', theme_id: 5},
])


Theme.delete_all
ActiveRecord::Base.connection.reset_pk_sequence!('themes')
Theme.create([
{name: "Кухни"},     
{name: "Гостинные"},      
{name: "Ванные комнаты"},   
{name: "Спальни"},      
{name: "Детские комнаты"},    
])