require 'onelogin/saml'

class SamlController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:consume]  

  def index
    # insert identity provider discovery logic here
    settings = Account.get_saml_settings
    request = Onelogin::RubySaml::Authrequest.new
    redirect_to(request.create(settings))
  end

  def consume
    response = Onelogin::RubySaml::Response.new(params[:SAMLResponse])

    # insert identity provider discovery logic here
    response.settings = Account.get_saml_settings

    logger.info "NAMEID: #{response.name_id}"

    if response.is_valid?
      session[:userid] = response.name_id
      redirect_to :action => :complete
    else
      redirect_to :action => :fail
    end
  end
end