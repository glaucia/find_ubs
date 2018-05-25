class CreateUbs < ActiveRecord::Migration[5.2]
  def change
    create_table :ubs do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.float :lat, :limit => 25
      t.float :lng, :limit => 25
      t.integer :size
      t.integer :adaptation_for_seniors
      t.integer :medical_equipament
      t.integer :medicine

      t.timestamps
    end
  end
end
