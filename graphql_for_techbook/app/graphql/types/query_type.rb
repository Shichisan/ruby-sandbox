module Types
  class QueryType < Types::BaseObject
    field :all_shops, [ShopType], null: false
    field :all_menus, [MenuType], null: false

    def all_shops
      Shop.all
    end

    def all_menus
      Menu.all
    end
  end
end
