class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :mid
      t.string :menuname
      t.string :bundle

      t.timestamps
    end
  end
end
