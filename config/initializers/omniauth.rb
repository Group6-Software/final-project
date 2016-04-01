OmniAuth.config.logger = Rails.logger

GOOGLE_CLIENT_ID = "361508755235-2mdmga55pq64ch4t26uqu21lc61doq8b.apps.googleusercontent.com"
GOOGLE_CLIENT_SECRET = "fm9YD4-MUv172qNQ4ViJet7C"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_CLIENT_ID, GOOGLE_CLIENT_SECRET, {:scope => 'email', client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end