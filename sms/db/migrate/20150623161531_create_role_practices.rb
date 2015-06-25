class CreateRolePractices < ActiveRecord::Migration
  def change
    create_table :role_practices do |t|
      t.string :rid
      t.string :pid
      t.string :role_name

      t.timestamps
    end
  end
end
