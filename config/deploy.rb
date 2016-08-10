# config valid only for current version of Capistrano

=begin
# Revisa que el acceso SSH esté bien
bundle exec cap production ssh:doctor
# Figaro
bundle exec cap production setup
# Primer deploy a servidor
cap production deploy:initial
# Después de deploy:initial
sudo rm /etc/nginx/sites-enabled/default
sudo ln -nfs "/home/rails/apps/PlataformaAecci/current/config/nginx.conf" "/etc/nginx/sites-enabled/PlataformaAecci"

# Deploy no inicial
cap production deploy
=end

lock '3.5.0'

server '162.243.23.240', port: 22, roles: [:web, :app, :db], primary: true

set :repo_url,        'git@github.com:fabo49/plataforma_AECCI.git'
set :application,     'PlataformaAecci'
set :user,            'rails'

# Puma
set :puma_threads,    [1, 4]
set :puma_workers,    0

# rbenv
set :rbenv_type, :user
set :rbenv_ruby, '2.3.0'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

# Don't change these unless you know what you're doing
set :pty,             true
set :use_sudo,        false
set :stage,           :production
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true

## Defaults:
# set :scm,           :git
# set :branch,        :master
# set :format,        :pretty
# set :log_level,     :debug
# set :keep_releases, 5

## Linked Files & Directories (Default None):
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system', 'public/uploads')
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')

namespace :puma do
  desc 'Create Directories for Puma Pids and Socket'
  task :make_dirs do
    on roles(:app) do
      execute "mkdir #{shared_path}/tmp/sockets -p"
      execute "mkdir #{shared_path}/tmp/pids -p"
    end
  end

  before :start, :make_dirs
end

namespace :deploy do

  desc 'Initial Deploy'
  task :initial do
    on roles(:app) do
      before 'deploy:restart', 'puma:start'
      invoke 'deploy'
    end
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      invoke 'puma:restart'
    end
  end

  before :starting,     :check_revision
  after  :finishing,    :compile_assets
  after  :finishing,    :cleanup
  after  :finishing,    :restart
end

# # Default branch is :master
# # ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp
#
# # Default deploy_to directory is /var/www/my_app_name
# # set :deploy_to, '/var/www/my_app_name'
#
# # Default value for :scm is :git
# # set :scm, :git
#
# # Default value for :format is :airbrussh.
# # set :format, :airbrussh
#
# # You can configure the Airbrussh format using :format_options.
# # These are the defaults.
# # set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto
#
# # Default value for :pty is false
# # set :pty, true
#
# # Default value for :linked_files is []
# # set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
#
# # Default value for linked_dirs is []
# # set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')
#
# # Default value for default_env is {}
# # set :default_env, { path: "/opt/ruby/bin:$PATH" }
#
# # Default value for keep_releases is 5
# # set :keep_releases, 5
#
# namespace :deploy do
#
#   after :restart, :clear_cache do
#     on roles(:web), in: :groups, limit: 3, wait: 10 do
#       # Here we can do anything such as:
#       # within release_path do
#       #   execute :rake, 'cache:clear'
#       # end
#     end
#   end
#
# end
