class CreateSpreePhysicalInventoryUnits < ActiveRecord::Migration
  def change
    create_table :spree_physical_inventory_units do |t|
      t.integer :lock_version
      t.string :state
      t.references :variant
      t.references :order
      t.references :shipment
      t.references :return_authorization

      t.timestamps

    end

      add_index "spree_physical_inventory_units", ["order_id"], :name => "index_physical_inventory_units_on_order_id"
      add_index "spree_physical_inventory_units", ["shipment_id"], :name => "index_physical_inventory_units_on_shipment_id"
      add_index "spree_physical_inventory_units", ["variant_id"], :name => "index_physical_inventory_units_on_variant_id"
  end
end
