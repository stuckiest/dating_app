class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :interest
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
