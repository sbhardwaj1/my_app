OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1965604233663717', '6396f08d4acaed9dbecdb4735b14d7f8',{:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end