FB_APP_ID = '__FACEBOOK_APP_ID__'
FB_APP_SECRET = '__FACEBOOK_APP_SECRET__'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FB_APP_ID, FB_APP_SECRET
end