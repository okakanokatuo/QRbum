class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :image
      t.text :body

      t.timestamps
    end
  end
end
