# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :params, Types::UserInputType, required: true

    def resolve(params:)
      user = User.create!(params.to_h)
      { user: }
    end
  end
end
