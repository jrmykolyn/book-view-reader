class Reader < ActiveRecord::Base
    has_many :books, through: :views
    has_many :views
end
