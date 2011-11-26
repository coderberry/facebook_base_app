FB_APP_ID = '126433604134808'
FB_APP_SECRET = 'b9fe726ffcf141cd30ec02ac0cc408e5'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, FB_APP_ID, FB_APP_SECRET
end