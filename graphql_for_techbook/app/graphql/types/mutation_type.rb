module Types
  class MutationType < Types::BaseObject
    field :create_shop, mutation: Mutations::CreateShop
    field :create_menu, mutation: Mutations::CreateMenu
  end
end
