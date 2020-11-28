class AddAccountReferencesToConsultant < ActiveRecord::Migration[6.0]
  def change
    add_reference :consultants, :account, null: false, foreign_key: true
  end
end
