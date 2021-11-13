# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
ProductType.destroy_all

product_type = ["bebida alcoholica", "bebida de fantasia"]

product_type.each do |product_type|
    ProductType.create(
        name: product_type
    )
end

categories = ["Ron", "Cerveza", "Vino"]

categories.each do |categorie|
    Category.create(
        name: categorie
    )
end

subcategories_1 = ["blanco", "negro"]
subcategories_2 = ["lager", "stout", "ipa"]
subcategories_3 = ["merlot", "cabernet"]

subcategories_1 .each do |categorie|
    Category.create(
        name: categorie,
        category_id: 1  
    )
end

subcategories_2 .each do |categorie|
    Category.create(
        name: categorie,
        category_id: 2
    )
end

subcategories_3 .each do |categorie|
    Category.create(
        name: categorie,
        category_id: 3
    )
end