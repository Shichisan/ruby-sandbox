module Types
  class ShopType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: false
    field :menus, [Types::MenuType], null: true
  end
end
