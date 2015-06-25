class CreateAtfscs < ActiveRecord::Migration
  def change
    create_table :atfscs do |t|
      t.integer :cid
      t.integer :scid
      t.string :description
      t.string :bundle
      t.integer :status

      t.timestamps
    end
  end
end
