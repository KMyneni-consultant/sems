class CreateFtfscs < ActiveRecord::Migration
  def change
    create_table :ftfscs do |t|
      t.string :ftfc_id
      t.string :scid
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
