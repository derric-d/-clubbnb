class AddFlatIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :flat, index:true
    add_foreign_key :reviews, :flats
  end
end
