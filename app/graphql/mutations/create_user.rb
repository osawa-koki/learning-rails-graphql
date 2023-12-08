# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :name, String, required: true
    argument :email, String, required: true
    argument :birthday, GraphQL::Types::ISO8601Date, required: true
    argument :lucky_number, Integer, required: true

    def resolve(**args)
      user = User.create!(args)
      { user: }
    end
  end
end
