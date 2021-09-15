# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Test text
meditations = File.open("./texts/marcus_aurelius_meditations.txt")
meditations_file = meditations.read
TextFormatter.create_paragraphs(meditations_file)