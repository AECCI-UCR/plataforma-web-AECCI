source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 4.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# PostgresSQL (Ojo: Se requiere biblioteca en debian-derivated: apt install libpq-dev)
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc


# -- Gemas agregadas por nosotros --

# LightBox2 (preview de imagenes)
gem 'lightbox2-rails'

# Gema para iconos y fonts
gem 'font-awesome-sass'

# Gema de boostrap
gem 'bootstrap-sass'

# Gema para el control de autorización
gem 'devise'

# Modal de confirmacion
gem 'data-confirm-modal', github: 'ifad/data-confirm-modal'

# Para la conversión a Markdown
gem 'epic-editor-rails'
gem 'redcarpet'
gem 'coderay'

# Gemas para subir archivos
gem 'carrierwave'
gem 'mini_magick' # Rquiere biblioteca

# Para validar el tamaño de archivos
gem 'file_validators'

# A small library for doing (command) lines.
gem 'cocaine', '~> 0.5.8'

# Gema para preview de PDFs
gem 'pdfjs_viewer-rails'

# Gema de "contact us"
gem 'contact_us', '~> 1.0.1'

# Gema para estilizar los file_uploaders
gem 'bootstrap-filestyle-rails'

# Paginación páginas con estilo de boostrap
gem 'will_paginate-bootstrap'

# Traducción
gem 'rails-i18n', github: 'svenfuchs/rails-i18n', branch: 'rails-4-x'

# Selectize is the hybrid of a textbox and <select> box
gem 'selectize-rails'

# Pudnit gema para el control de autorización
gem 'pundit'

# Variables de ambiente
gem "figaro"

# La versión 11.1.2 ha dado problema al ser llamada
gem 'rake', '11.1.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Deploy
  gem 'capistrano',         require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-rbenv',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
  gem 'capistrano-figaro-yml', '~> 1.0.2'
  gem 'capistrano-ssh-doctor', '~> 1.0'
end

# Servidor de aplicación
gem 'puma'
