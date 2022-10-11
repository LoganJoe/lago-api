# frozen_string_literal: true

module Types
  module Fees
    class Object < Types::BaseObject
      graphql_name 'Fee'
      implements Types::Invoices::InvoiceItem

      field :vat_amount_cents, GraphQL::Types::BigInt, null: false
      field :vat_amount_currency, Types::CurrencyEnum, null: false

      field :vat_rate, GraphQL::Types::Float, null: true
      field :units, GraphQL::Types::Float, null: false
      field :events_count, GraphQL::Types::BigInt, null: true

      def item_type
        object.fee_type
      end
    end
  end
end