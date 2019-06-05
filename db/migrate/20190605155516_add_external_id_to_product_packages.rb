class AddExternalIdToProductPackages < ActiveRecord::Migration[5.0]
  def change
    add_column :product_packages, :external_id, :string, null: true
    add_index :product_packages, :external_id
  end
end
