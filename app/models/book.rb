class Book < ActiveRecord::Base
    has_many :readers, through: :views
    has_many :views
end
