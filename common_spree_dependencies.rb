# By placing all of Spree's shared dependencies in this file and then loading
# it for each component's Gemfile, we can be sure that we're only testing just
# the one component of Spree.
source 'https://rubygems.org'

gem 'ruby', '2.3.1p112'
gem 'spree_braintree_vzero', github: 'spree-contrib/spree_braintree_vzero'
gem 'spree_address_book', github: 'spree-contrib/spree_address_book'
gem 'spree_digital', github: 'spree-contrib/spree_digital'
gem 'spree_social', github: 'spree-contrib/spree_social'
gem 'spree_related_products', github: 'spree-contrib/spree_related_products'
gem 'spree_active_shipping', github: 'spree-contrib/spree_active_shipping'
gem 'spree_product_assembly', github: 'spree-contrib/spree-product-assembly'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise'
gem 'spree_gateway', github: 'spree/spree_gateway'
gem 'coffee-rails', '~> 4.1.1'
gem 'sass-rails', '~> 5.0.0'
gem 'sqlite3', platforms: [:ruby, :mingw, :mswin, :x64_mingw]
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]
gem 'rails_12factor', group: :production

platforms :jruby do
  gem 'jruby-openssl'
  gem 'activerecord-jdbcsqlite3-adapter'
end

platforms :ruby do
  gem 'mysql2'
  gem 'pg'
end

group :test do
  gem 'capybara', '~> 2.4'
  gem 'capybara-screenshot', '~> 1.0'
  gem 'database_cleaner', '~> 1.3'
  gem 'email_spec'
  gem 'factory_girl_rails', '~> 4.7'
  gem 'launchy'
  gem 'rspec-activemodel-mocks', '~> 1.0'
  gem 'rspec-collection_matchers'
  gem 'rspec-its'
  gem 'rspec-rails', '~> 3.4'
  gem 'simplecov'
  gem 'webmock', '~> 2.1'
  gem 'poltergeist', '~> 1.10'
  gem 'timecop'
  gem 'with_model'
  gem 'mutant-rspec', '~> 0.8'
  gem 'shoulda-matchers', '~> 3.1'
  gem 'shoulda-callback-matchers', '~> 1.1'
  gem 'test_after_commit', '~> 1.1'
end

group :test, :development do
  gem 'rubocop', require: false
  gem 'pry-byebug'
end
