class CreateAccountTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :account_transactions do |t|
      t.datetime :date
      t.float :amount
      t.integer :account_id

      t.timestamps
    end
  end
end
