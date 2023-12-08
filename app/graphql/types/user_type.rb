# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :email, String
    field :birthday, GraphQL::Types::ISO8601Date
    field :lucky_number, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

  class UserInputType < Types::BaseInputObject
    argument :name, String, required: false
    argument :email, String, required: false
    argument :birthday, GraphQL::Types::ISO8601Date, required: false
    argument :lucky_number, Integer, required: false
  end
end
