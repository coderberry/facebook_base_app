class User < ActiveRecord::Base

  def self.create_with_omniauth(auth) 
    create! do |user|
      user.uid             = auth['uid']
      user.provider        = auth['provider']
      user.name            = auth['info']['name']
      user.image_url       = auth['info']['image']
      user.gender          = auth['extra']['raw_info']['gender']
      user.email           = auth['info']['email']
      user.locale          = auth['extra']['raw_info']['locale']
      user.timezone_offset = auth['extra']['raw_info']['timezone']
    end
  end

end
