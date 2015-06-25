class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fname
      t.string :mname
      t.string :lname
      t.string :address
      t.string :phno
      t.string :email

      t.timestamps
    end
  end
end
