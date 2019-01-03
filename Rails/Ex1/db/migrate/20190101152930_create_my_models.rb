class CreateMyModels < ActiveRecord::Migration[5.2]
  def change
    create_table :my_models do |t|
      t.integer :num

      t.timestamps
    end
  end

end
