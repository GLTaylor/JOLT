class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :nde, foreign_key: true
      t.date :date
      t.boolean :waiver_check
      t.string :status

      t.timestamps
    end
  end
end
