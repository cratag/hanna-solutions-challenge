# frozen_string_literal: true

module Types
  class AccountTransactionType < Types::BaseObject
    field :id, ID, null: false
    field :date, GraphQL::Types::ISO8601DateTime
    field :amount, Float
    field :account_id, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
