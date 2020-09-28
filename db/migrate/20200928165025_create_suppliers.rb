class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.integer :ein
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :phone_number

      t.timestamps
    end
  end
end
