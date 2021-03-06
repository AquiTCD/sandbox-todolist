# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby ["2.7.1", RUBY_VERSION].max

# === Core libraries
gem "rails", "~> 6.0.3", ">= 6.0.3.2"

# === Database, ORM, Model, etc
gem "attribute_normalizer"
gem "pg", ">= 0.18", "< 2.0"
# gem "redis", "~> 4.0"
# gem "redis-namespace"

# === Web servers
gem "puma", "~> 4.1"

# === Authentication and Authorization
gem "devise"
# gem "doorkeeper"
gem "oauth2"
gem "omniauth"
gem "omniauth-facebook"
# gem "omniauth-google-oauth2"
gem "omniauth-twitter"
# gem "pundit"

# === Views
gem "draper"
# gem "fast_jsonapi"
gem "kaminari"
gem "sass-rails", ">= 6"
gem "slim-rails"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"
# gem "jbuilder", "~> 2.7"
# gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.4.2", require: false

# === Rack Middlewares
gem "rack-health"

# === Jobs, Cron
# gem "sidekiq"
# gem "whenever", require: false

# === Others
# gem "aws-sdk-s3"
gem "chrono_logger"
gem "committee"
gem "config"
gem "enum_help"
gem "interactor-rails", "~> 2.0"
gem "lockbox"
gem "rack-dev-mark"
gem "rails-i18n"
gem "seedbank"
gem "seed-fu", "~> 2.3"
# gem "sentry-raven"

group :development, :test do
  gem "brakeman", require: false
  gem "bullet"
  gem "bundler-audit"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "factory_bot_rails"
  gem "faker"
  # == for debugging
  gem "pry-byebug"
  gem "pry-doc"
  gem "pry-rails"
  gem "pry-stack_explorer"
  # == for debugging on VSCode
  gem "debase"
  gem "ruby-debug-ide"
end

group :development do
  gem "annotate"
  gem "better_errors"
  gem "binding_of_caller"
  gem "hirb"
  gem "letter_opener"
  gem "listen", "~> 3.2"
  gem "meta_request"
  gem "rack-mini-profiler", require: false
  gem "rails-erd"
  gem "rubocop", require: false
  gem "scss_lint", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "view_source_map"
  gem "web-console", ">= 3.3.0"

  # == Deployment
  # gem "capistrano", "~> 3.7.0", require: false
  # gem "capistrano-faster-assets"
  # gem "capistrano-rails"
  # gem "capistrano-rbenv", require: false
  # gem "capistrano-rbenv-install"
  # gem "capistrano-bundler"
  # gem "capistrano-sidekiq"
  # gem "capistrano3-puma"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "parallel_tests"
  gem "rspec_junit_formatter", require: false
  gem "rspec-rails"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "webdrivers"
end

# === Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
