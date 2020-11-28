class CreateConsultants < ActiveRecord::Migration[6.0]
  def change
    create_table :consultants do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.text :bio
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
