=begin
# Mini-guía de comandos para deploy

# Revisa que el acceso SSH esté bien
bundle exec cap production ssh:doctor

# Figaro (archivo con las variables de ambiente)
bundle exec cap production setup

# Primer deploy a servidor
cap production deploy:initial

# Deploy no inicial
cap production deploy

# Puma
# Comandos útiles
cap production puma:status [start] [stop] [restart]

# Puma comandos (En el servidor)
# ps aux | grep puma    # Get puma pid
# kill -s SIGUSR2 pid   # Restart puma
# kill -s SIGTERM pid   # Stop puma
=end
lock '3.6.0'

set :application,     'plataforma-web-AECCI'
set :repo_url,        'git@github.com:AECCI-UCR/plataforma-web-AECCI.git'

set :pty,             true
set :use_sudo,        false
set :deploy_via,      :remote_cache

## Linked Files & Directories:
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}
set :linked_files, %w{config/database.yml config/secrets.yml}

# rbenv
set :rbenv_type, :user
set :rbenv_ruby, '2.3.1'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all

# Puma
set :puma_workers, 0
set :puma_threads, [0, 4]
set :puma_init_active_record, true

# Otros
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
