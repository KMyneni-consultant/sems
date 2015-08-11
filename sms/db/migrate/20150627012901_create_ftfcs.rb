class CreateFtfcs < ActiveRecord::Migration
  def change
    create_table :ftfcs do |t|
      t.string :cid
      t.string :description
      t.integer :status

      t.timestamps
    end
  end
end
