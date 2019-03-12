class CreateData < ActiveRecord::Migration[5.2]
  def change
    create_table :data do |t|
      t.string :weight
      t.string :height
      t.string :bmi
      t.timestamps
    end
  end
end
