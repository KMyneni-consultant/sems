class CreateRoleFacilities < ActiveRecord::Migration
  def change
    create_table :role_facilities do |t|
      t.string :rid
      t.string :fid
      t.string :pid
      t.string :role_name

      t.timestamps
    end
  end
end
