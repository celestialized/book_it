class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.string :title
      t.integer :duration_in_minutes
      t.integer :cost_in_pennies
      t.string :category
      t.string :level
      t.string :description
      t.integer :number_of_sessions
      t.string :sku

      t.timestamps
    end
  end
end
