class AddNdeRefToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :nde, foreign_key: true
  end
end
