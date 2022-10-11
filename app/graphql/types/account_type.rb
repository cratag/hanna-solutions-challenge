# frozen_string_literal: true

module Types
  class AccountType < Types::BaseObject
    field :id, ID, null: false
    field :account_type, String
    field :user_id, Integer
    field :account_transactions, [Types::AccountTransactionType]
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
