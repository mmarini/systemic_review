# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JSON.load(File.new(File.dirname(__FILE__) + '/data/citations.json')).map do |line| 
  title = line.delete('title')
  abstract = line.delete('abstract')
  citation = Citation.create_with(line).find_or_create_by(title: title)
  citation.create_abstract(content: abstract) if citation.abstract.nil?
end