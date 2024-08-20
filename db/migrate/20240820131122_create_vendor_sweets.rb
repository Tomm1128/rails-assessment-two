class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.references :vendor
      t.references :sweet

      t.timestamps
    end
  end
end
