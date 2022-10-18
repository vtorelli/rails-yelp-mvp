class AddReviewsToRestaurants < ActiveRecord::Migration[7.0]
  def change
    add_reference :restaurants, :reviews, null: false, foreign_key: true
  end
end
