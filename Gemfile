<<<<<<< HEAD

source 'https://rubygems.org'

puppetversion = ENV['PUPPET_VERSION']
gem 'puppet', puppetversion, :require => false
gem 'puppet-lint'
gem 'rspec-puppet'
gem 'puppetlabs_spec_helper', '>= 0.1.0'
=======
source 'https://rubygems.org'

group :test do
  gem 'rake'
  gem 'puppet', ENV['PUPPET_VERSION'] || '~> 3.7.0'
  gem 'puppet-lint'
  # https://github.com/rspec/rspec-core/issues/1864
  gem 'rspec', '< 3.2.0', {'platforms'=>['ruby_18']}
  gem 'rspec-puppet'
  gem 'puppet-syntax'
  gem 'puppetlabs_spec_helper'
  gem 'json'
  gem 'metadata-json-lint'
end

group :development do
  gem 'yard'
  gem 'travis'
  gem 'travis-lint'
  gem 'beaker'
  gem 'beaker-rspec'
  gem 'vagrant-wrapper'
  gem 'puppet-blacksmith'
  gem 'guard-rake'
  gem 'pry'
end
>>>>>>> ca49b9130a6dd79e10b86e7edb33316914c82b71
