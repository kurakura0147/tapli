class AddColumnDatum < ActiveRecord::Migration[5.2]
  def change
    add_column :data, :record_day, :date
    add_reference :data, :user, index: true
    remove_column :data, :bmi, :string
  end
end
