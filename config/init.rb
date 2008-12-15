# Go to http://wiki.merbivore.com/pages/init-rb
 
require 'config/dependencies.rb'
 
#use_orm :datamapper
use_test :rspec
use_template_engine :erb
 
Merb::Config.use do |c|
  c[:use_mutex] = false
  c[:session_store] = 'cookie'  # can also be 'memory', 'memcache', 'container', 'datamapper
  
  # cookie session store configuration
  c[:session_secret_key]  = '2722b1616858c6e35c1f43292326fe2e2c10f76b'  # required for cookie session store
  c[:session_id_key] = '_sms_session_id' # cookie session id key, defaults to "_session_id"
end
 
Merb::BootLoader.before_app_loads do
  include ML10n
  load_localization!
  # This will get executed after dependencies have been loaded but before your app's classes have loaded.
end
 
Merb::BootLoader.after_app_loads do
  # This will get executed after your app's classes have been loaded.
end
