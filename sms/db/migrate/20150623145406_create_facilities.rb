class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :fid
      t.string :pid
      t.string :facility_name

      t.timestamps
    end
  end
end
