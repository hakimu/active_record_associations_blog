class AddInternalIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :internal_id, :string
    add_index :users, :internal_id
  end
end
