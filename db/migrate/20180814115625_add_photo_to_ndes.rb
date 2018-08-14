class AddPhotoToNdes < ActiveRecord::Migration[5.2]
  def change
    add_column :ndes, :photo, :string
  end
end
