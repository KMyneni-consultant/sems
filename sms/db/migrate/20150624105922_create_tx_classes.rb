class CreateTxClasses < ActiveRecord::Migration
  def change
    create_table :tx_classes do |t|
      t.string :cid
      t.string :class_name
      t.string :fid
      t.string :pid

      t.timestamps
    end
  end
end
