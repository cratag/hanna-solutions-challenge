class Mutations::CreateTransaction < Mutations::BaseMutation
    argument :account_id, Integer, required: true
    argument :date, String, required: true
    argument :amount, Float, required: true

    field :account_transaction, Types::AccountTransactionType, null: false
    field :errors, [String], null: false

    def resolve(account_id:, date:, amount:)
        account_transaction = AccountTransaction.new(account_id: account_id, date: date, amount: amount)
        if account_transaction.save
            {
                account_transaction: account_transaction,
                errors: []
            }
        else
            {
                account_transaction: nil,
                errors: account_transaction.errors.full_messages
            }
        end
    end
end