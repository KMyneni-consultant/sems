class CreateTxSections < ActiveRecord::Migration
  def change
    create_table :tx_sections do |t|
      t.string :sid
      t.string :section_name
      t.string :fid
      t.string :pid

      t.timestamps
    end
  end
end
