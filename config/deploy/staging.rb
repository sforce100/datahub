set :deploy_to, "/opt/rails_apps/#{application}"
set :rails_env, "staging"
set :unicorn_path, "#{deploy_to}/current/config/unicorn.rb"
# set :host, "#{begin hosts; rescue  => e; '0.0.0.0'; end}"
set :host, '0.0.0.0'
role :web, "#{host}"                          # Your HTTP server, Apache/etc
role :app, "#{host}"                          # This may be the same as your `Web` server
role :db,  "#{host}", :primary => true # This is where Rails migrations will run
set :user, "hzh"
