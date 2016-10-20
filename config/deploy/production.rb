set :stage, :production
set :rails_env, :production

set :user, "asoinfo"
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
server '163.178.104.157', user: 'asoinfo', roles: %w{app db web}, primary: true
