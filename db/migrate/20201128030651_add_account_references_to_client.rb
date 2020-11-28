class AddAccountReferencesToClient < ActiveRecord::Migration[6.0]
  def change
    add_reference :clients, :account, null: false, foreign_key: true
  end
end
