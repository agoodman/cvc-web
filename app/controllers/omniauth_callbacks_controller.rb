class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  before_filter :common, only: [ :twitter, :facebook ]
  
  def twitter
  end
  
  def facebook
  end

  private
  
  def common
    auth = request.env['omniauth.auth']
    puts "auth: #{auth}"
    user = User.includes(:services).where(services: { provider: auth['provider'], uid: auth['uid'] }).first
    if user.nil?
      user = User.create!(email: auth['info']['email'] || "#{auth['uid']}@nowhere.com", password: Digest::SHA1.hexdigest(auth['uid']))
      user.services.create(provider: auth['provider'], uid: auth['uid'], uname: auth['info']['nickname'])
    end
    sign_in user
    redirect_to request.env['omniauth.origin'] || root_path  
  end
  
end
