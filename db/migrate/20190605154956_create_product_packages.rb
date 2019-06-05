class CreateProductPackages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_packages do |t|

      t.timestamps
    end
  end
end
