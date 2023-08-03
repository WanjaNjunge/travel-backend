class CreateTravelPackages < ActiveRecord::Migration[7.0]
  def change
    create_table :travel_packages do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.decimal :pricing
      t.text :itinerary
      t.string :booking_status
      t.references :user, null: false, foreign_key: true
      t.references :destination, null: false, foreign_key: true

      t.timestamps
    end
  end
end
