class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :pid
      t.string :practice_name

      t.timestamps
    end
  end
end
