# frozen_string_literal: true

module Mutations
  class DeleteUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :id, ID, required: true

    def resolve(id:)
      user = User.find(id)
      user.destroy!
      { user: }
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new("User with ID #{id} not found.")
    end
  end
end
