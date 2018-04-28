class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.column :comment_content, :string
      t.column :author, :string
      t.column :post_id, :integer

      t.timestamps
    end
  end
end
