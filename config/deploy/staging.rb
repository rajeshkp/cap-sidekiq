set :deploy_to, "#{apps_dir}/#{application}_stag"
set :rails_env, "staging"
server "192.168.1.22", :app, :web, :db, :primary => true
