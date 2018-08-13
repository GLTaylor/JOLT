class AddOver18ToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :over_18, :boolean, default: false
  end
end
