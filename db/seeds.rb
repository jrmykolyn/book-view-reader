# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = []

10.times do |x|
    users << Reader.create( { :name => Faker::Name.name } )
end

30.times do |x|
    book = Book.create( { :name => Faker::Book.title } )

    View.create( { :reader_id => users.sample.id, :book_id => book.id } )
end
