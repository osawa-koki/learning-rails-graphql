# frozen_string_literal: true

module Resolvers
  class UsersResolver < GraphQL::Schema::Resolver
    description 'List all users.'

    type [Types::UserType], null: false

    argument :filter, Types::UserFilterType, required: false

    def resolve(filter: nil)
      User.all

      if filter.present?
        User.where(filter.to_h)
      else
        User.all
      end
    end
  end
end
