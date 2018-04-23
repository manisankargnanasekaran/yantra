class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address_line1
      t.string :address_line2
      t.string :address_line3
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code

      t.timestamps
    end
  end
end
