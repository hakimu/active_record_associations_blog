class AddImageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image_location, :string
  end
end
