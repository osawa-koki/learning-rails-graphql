# frozen_string_literal: true

module Mutations
  class UpdateUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :id, ID, required: true
    argument :params, Types::UserInputType, required: true

    def resolve(id:, params:)
      user = User.find(id)
      user.update!(params.to_h)
      { user: }
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new("User with ID #{id} not found.")
    end
  end
end
