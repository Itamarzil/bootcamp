class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :model_serial_number

      t.timestamps
    end
  end
end
