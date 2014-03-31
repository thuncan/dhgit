class CreateBuilders < ActiveRecord::Migration
  def change
    create_table :builders do |t|
      t.integer :page_id
      t.string :name
      t.integer :yOrigin
      t.integer :xOrigin
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
