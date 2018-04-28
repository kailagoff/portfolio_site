class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.column :skill_name, :string
      t.column :skill_description, :string

      t.timestamps
    end
  end
end
