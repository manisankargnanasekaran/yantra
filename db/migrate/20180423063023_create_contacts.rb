class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :phone_no1
      t.string :phone_no2
      t.string :fax
      t.string :social_network

      t.timestamps
    end
  end
end
