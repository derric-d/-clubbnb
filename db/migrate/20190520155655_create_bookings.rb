class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :flat, foreign_key: true
      t.references :user, foreign_key: true
      t.date :move_in_date
      t.date :move_out_date
      t.string :status

      t.timestamps
    end
  end
end
