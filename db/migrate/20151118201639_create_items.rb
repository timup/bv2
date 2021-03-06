class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_id
      t.string :name
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
