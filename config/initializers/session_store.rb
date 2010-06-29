# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_automovel_na_web_session',
  :secret      => 'cf4f7b7d2cb1e62d75ff1ac67d5482548f9f83cfdb6670b84e65e617c1b224d8592c4a1523c1be8bb02a1b48e41ca8d66b354554995346c9187ea0aa3196f3a7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
