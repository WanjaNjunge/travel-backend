class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :comment
      t.integer :rating
      t.references :user, null: false, foreign_key: true
      t.references :travel_package, null: false, foreign_key: true

      t.timestamps
    end
  end
end
