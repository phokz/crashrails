class AddImportIdToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :import_id, :integer
  end
end
