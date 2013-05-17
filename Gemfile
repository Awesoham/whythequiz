source 'https://rubygems.org'

gem 'rails'
gem 'jquery-rails'
gem "thin"
gem "mongoid"
gem "haml-rails"
gem "bootstrap-sass"
gem "devise"
gem "cancan"
gem "rolify"
gem "simple_form"
gem "figaro"

group :assets do
	gem 'sass-rails',   '~> 3.2.3'
	gem 'coffee-rails'
	gem 'uglifier'
end

group :development do
	gem "html2haml", group: :development
	gem "guard-bundler", group: :development
	gem "guard-rails", group: :development
	gem "guard-rspec", group: :development
	gem "rb-inotify", group: :development, require: false
	gem "rb-fsevent", group: :development, require: false
	gem "rb-fchange", group: :development, require: false
	gem "quiet_assets", group: :development
	gem "better_errors", group: :development
	gem "binding_of_caller", group: :development, platforms: [:mri_19, :rbx]
	gem "hub" require: nil, group: :development

end

group :test do
	gem "capybara", group: :test
	gem "database_cleaner", group: :test
	gem "mongoid-rspec", group: :test
	gem "email_spec", group: :test
end

group :development, :test do
	gem "rspec-rails", group: [:development, :test]
	gem "factory_girl_rails", group: [:development, :test]
end	

