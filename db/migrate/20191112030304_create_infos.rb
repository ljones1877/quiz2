class CreateInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :infos do |t|
      t.string :name
      t.string :information
      t.integer :user_id
      t.timestamps
    end
    add_index :infos, :user_id
  end
end
