class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.float :price
      t.string :name
      t.string :location
      t.boolean :availabilty
      t.integer :capacity
      t.float :size
      t.string :type
      t.string :equipment
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
