class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.float :weight
      t.integer :category
      t.date :birthday
      t.date :passing_date

      t.timestamps
    end
  end
end
