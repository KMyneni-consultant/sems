class CreateAtfcs < ActiveRecord::Migration
  def change
    create_table :atfcs do |t|
      t.integer :cid
      t.string :description
      t.string :bundle
      t.integer :status

      t.timestamps
    end
  end
end
