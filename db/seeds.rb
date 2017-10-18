# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

readers = []
books = []

1.times do |x|
    readers << Reader.create( { :name => Faker::Name.name } )
end

10.times do |x|
    books << Book.create( { :name => Faker::Book.title } )
end

50.times do |x|
    View.create( { :reader_id => readers.sample.id, :book_id => books.sample.id } )
end
