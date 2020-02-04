class CreateBicycles < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycles do |t|
      t.integer :owner_id
      t.string :category
      t.string :size
      t.integer :age
      t.text :description
      t.string :location
      t.string :image
      t.integer :price
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
