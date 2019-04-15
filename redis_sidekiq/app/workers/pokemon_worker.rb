class PokemonWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  require 'csv'

  def perform(csv_path)
    CSV.foreach((csv_path), headers: true) do |pokemon|
      Pokemon.create(
        pokedex_id: pokemon[0],
        name: pokemon[1],
        height: pokemon[3],
        weight: pokemon[4]
      )
    end
  end
end

class PokemonRemoveWorker
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform
    Pokemon.destroy_all
  end
end
