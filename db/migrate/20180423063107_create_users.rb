class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :password
      t.boolean :is_active
      t.string :deleted_at
      t.string :auth_tocken
      t.string :password_reset_tocken
      t.datetime :password_reset_send_at
      t.references :address, foreign_key: true
      t.references :contact, foreign_key: true
      t.references :tenant, foreign_key: true

      t.timestamps
    end
  end
end
