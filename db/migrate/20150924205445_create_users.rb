class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :gender
      t.string :looking_for
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
