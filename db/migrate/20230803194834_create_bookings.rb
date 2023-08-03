class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone
      t.integer :no_of_people
      t.date :check_in_date
      t.date :check_out_date
      t.references :user, null: false, foreign_key: true
      t.references :travel_package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
