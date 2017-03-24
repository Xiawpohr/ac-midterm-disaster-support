class CreateDisasters < ActiveRecord::Migration[5.0]
  def change
    create_table :disasters do |t|
      t.string :title
      t.string :content
      t.integer :category_id, index: true

      t.timestamps
    end
  end
end
