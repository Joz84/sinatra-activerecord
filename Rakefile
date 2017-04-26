require "sinatra/activerecord/rake"

namespace :db do
  task :load_config do
    require "./app"
  end

  task :timestamp do
    puts DateTime.now.strftime('%Y%m%d%H%M%S')
  end
end
