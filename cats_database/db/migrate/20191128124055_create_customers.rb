class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :email
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
