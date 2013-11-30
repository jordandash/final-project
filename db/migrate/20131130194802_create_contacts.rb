class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :description
      t.string :email
      t.string :phone
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
