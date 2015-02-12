class CallbacksController < ApplicationController
  def passthru
  	binding.remote_pry
   user = User.from_omniauth(request.env["omniauth.auth"])
    @payload = request.env["omniauth.auth"].extra.raw.to_hash
    session[:user_id] = user.id
    flash[:notice] = "Signed in "
    redirect_to root_url
  end


end
