class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :title
      t.text :information
      t.integer :user_id
      t.timestamps
    end
    add_index :infos, :user_id
  end
end
