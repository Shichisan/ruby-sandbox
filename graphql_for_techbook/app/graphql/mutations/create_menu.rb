module Mutations
  class CreateMenu < GraphQL::Schema::Mutation
    argument :name, String, required: true
    argument :price, Integer, required: false
    argument :shop_name, String, required: true

    type Types::MenuType

    def resolve(name: nil, price: nil, shop_name: nil)
      shop_by_name = Shop.find_by(name: shop_name)
      Menu.create!(
        name: name,
        price: price,
        shop: shop_by_name
      )
    rescue ActiveRecord::RecordInvlaid => e
      GraphQL::ExecutionError.new("Invalid parameters: #{e.record.errors.full_messages.join(", ")}")
    end
  end
end
