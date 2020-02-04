class CreateBicycleReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :bicycle_reviews do |t|
      t.text :review_text
      t.string :bicycle_id
      t.string :user_id
      t.datetime :start
      t.datetime :end
      t.integer :star

      t.timestamps
    end
  end
end
