class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|

      t.string :name
      t.string :email
      t.string :phone_number
      t.integer :subject, default: 0
      t.text :message


      t.timestamps
    end
  end
end
