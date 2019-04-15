class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def upload
    csv_path = File.join Rails.root, 'db', 'polemon.csv'
    PokemonWorker.perform_async(csv_path)
    flash[:notice] = "Pokemons getting added from your database."
    redirect_to pokemons_path
  end

  def destroy_all
    PokemonRemoveWorker.perform_async
    flash[:notice] = "Pokemons getting removed from your database."
    redirect_to pokemons_path
  end
end
