require 'capistrano/ext/multistage'
require 'bundler/capistrano'
require 'sidekiq/capistrano'

role :web, "192.168.1.22"
set :application, "pubm"
set :repository, "https://github.com/rajeshkp/cap-sidekiq.git"
set :scm, :git
set :branch, "master"
set :user, "rajesh"
set :stages, ["development", "staging", "production"]
set :default_stage, "development"
set :use_sudo, false
set :scm_verbose, true
default_run_options[:pty] = true
set :ssh_options, {:forward_agent => true}
set :git_shallow_clone, 1
set :deploy_via, :remote_cache
set :normalize_asset_timestamps, false

# Following are the variables that are reused in the unicorn/#{env}.rb
set :home_dir, "/home/#{user}"
set :apps_dir, "#{home_dir}/apps"
