class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.column :photo_name, :string
      t.column :photo_description, :string

      t.timestamps
    end
  end
end
