module Types
  class MenuType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :price, Integer, null: true
    field :shop, Types::ShopType, null: false
  end
end
