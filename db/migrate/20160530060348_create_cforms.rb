class CreateCforms < ActiveRecord::Migration
  def change
    create_table :cforms do |t|
      t.string :name
      t.string :email
      t.string :mobile

      t.timestamps null: false
    end
  end
end
