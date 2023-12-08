module Resolvers
  class UserResolver < GraphQL::Schema::Resolver
    description 'Find a user by ID.'

    type Types::UserType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      User.find(id)
    rescue ActiveRecord::RecordNotFound
      GraphQL::ExecutionError.new("User with ID #{id} not found.")
    end
  end
end
