class CreateNdes < ActiveRecord::Migration[5.2]
  def change
    create_table :ndes do |t|
      t.string :name
      t.text :description
      t.integer :drama
      t.string :city
      t.string :location
      t.integer :price
      t.references :user, foreign_key: true
      t.string :image
      t.integer :participant_number

      t.timestamps
    end
  end
end
