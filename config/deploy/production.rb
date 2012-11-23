set :deploy_to, "#{apps_dir}/#{application}_prod"
set :rails_env, "production"
server "192.168.1.22", :app, :web, :db, :primary => true
