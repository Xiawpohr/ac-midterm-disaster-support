class CreateCommets < ActiveRecord::Migration[5.0]
  def change
    create_table :commets do |t|
      t.string :speaker
      t.text :content
      t.integer :disaster_id, index: true

      t.timestamps
    end
  end
end
