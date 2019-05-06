namespace :demo do
  desc 'just demo!'
  task puts_log: :environment do
    puts "demo rake task"
  end
end
