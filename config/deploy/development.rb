set :deploy_to, "#{apps_dir}/#{application}_dev"
set :rails_env, "development"
server "192.168.1.22", :app, :web, :db, :primary => true
