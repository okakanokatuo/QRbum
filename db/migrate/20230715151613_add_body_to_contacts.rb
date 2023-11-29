class AddBodyToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :title, :text
  end
end
