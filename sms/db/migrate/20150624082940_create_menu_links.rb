class CreateMenuLinks < ActiveRecord::Migration
  def change
    create_table :menu_links do |t|
      t.string :lid
      t.string :linkname
      t.string :bundle

      t.timestamps
    end
  end
end
