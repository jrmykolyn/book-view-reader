class HomeController < ApplicationController

    def index
        # NOTE: To prevent the possibility of getting an empty result set, this demo only includes 1x Reader.

        # Starting from a Reader instance, get all the views for a random book.
        @starting_from_a_reader = Reader.first.views.where( :book_id => Book.all.sample.id )

        # Starting from a random Book instance, get all the views for a given reader.
        @starting_from_a_book = Book.all.sample.views.where( :reader_id => Reader.first.id )

        # Starting from the View model, get any records for a random book and a given reader.
        @starting_from_the_view_model = View.where( :reader_id => Reader.first.id, :book_id => Book.all.sample.id )

        # Starting by joining our tables together, query by and reader, and filter down our results.
        @starting_with_a_join = View.joins( :reader, :book ).where( :views => { :reader_id => Reader.first.id, :book_id => Book.all.sample.id } ).uniq
    end

end
