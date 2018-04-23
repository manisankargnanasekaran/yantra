class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.string :tenant_name
      t.string :email
      t.string :password
      t.boolean :is_active
      t.string :deleted_at
      t.references :address, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
