source 'http://rubygems.org'

gem 'rails', '3.2.2'


gem "devise", ">= 2.1.0.rc"           # for user authentication
gem "omniauth"                        # Authentification for external sites 
gem 'omniauth-linkedin'               # self explained
gem 'omniauth-facebook'               # self explained
gem 'omniauth-twitter'                # self explained
gem 'nifty-generators'                # scaffolding for controllers and views. 
gem "bootstrap-sass", ">= 2.0.1"      # Bootstrap CSS (actually SASS)
gem 'jquery-rails'                    # self explained
gem "haml", ">= 3.1.4"                # view templating engine for haml
gem "slim-rails"                      # view templating engine for slim
gem 'formtastic'                      # Helper methods forms
gem 'best_in_place'                   # In place editing ?????
gem 'activeadmin'                     # For admin dashboard  
gem "meta_search", '>= 1.1.0.pre'     # Used in admin dashboard, for searching within models.


group :development, :test do                
  gem "haml-rails", ">= 0.3.4"                # templating engine for views
  gem 'sqlite3'                               # developement database 
  gem "rspec-rails", ">= 2.9.0.rc2"           # model testing
  gem "factory_girl_rails", ">= 2.0.0.rc"     # generating test data
end

group :test do
  gem "cucumber-rails", ">= 1.3.0"            # functional testing
  gem "capybara", ">= 1.1.2"                  # Testing tools with rails  
  gem "database_cleaner", ">= 0.7.1"          # self explained
  gem "launchy", ">= 2.0.5"                   # Testing with browser
end

# for pre compilation before going to production.
group :assets do                              
  gem 'sass-rails',   '~> 3.2.3'          
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'jquery-ui-rails'
end

group :production do
  gem 'pg'                                    # Production database is PostgresSQL.
end  




