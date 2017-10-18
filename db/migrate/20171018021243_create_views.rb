class CreateViews < ActiveRecord::Migration
  def change
    create_table :views do |t|
      t.integer :reader_id
      t.integer :book_id

      t.timestamps null: false
    end
  end
end
