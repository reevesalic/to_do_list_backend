# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
financial = Category.create(name: "Financial")
health = Category.create(name: "Health")
misc = Category.create(name: "Misc")

Task.create(task: "Call bank", phone_number: 123456789, category_id: financial.id)
Task.create(task: "Call Dr", phone_number: 123456789, category_id: health.id)
Task.create(task: "Call credit card company", phone_number: 123456789, category_id: financial.id)
Task.create(task: "Clean living room", phone_number: 123456789, category_id: misc.id)