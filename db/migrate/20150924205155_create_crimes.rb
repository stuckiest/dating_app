class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :crime
      t.string :sentence
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
