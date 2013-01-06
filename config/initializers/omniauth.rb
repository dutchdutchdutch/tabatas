OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  provider :twitter, 'KM1RbcgkN5KJooBCqi1nvg', 'RKyKfAOqwQ54anPVeSOXHIHnK60vPxLjmf2uA0Y2yhc'
end

