module Mutations
  class CreateShop < GraphQL::Schema::Mutation
    argument :name, String, required: true
    argument :address, String, required: true

    type Types::ShopType

    def resolve(name: nil, address: nil)
      Shop.create!(
        name: name,
        address: address
      )
    rescue ActiveRecord::RecordInvlaid => e
      GraphQL::ExecutionError.new("Invalid parameters: #{e.record.errors.full_messages.join(", ")}")
    end
  end
end
