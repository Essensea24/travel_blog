class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :age
      t.string :about_me
      t.string :profile_pic

      t.timestamps null: false
    end
  end
end
