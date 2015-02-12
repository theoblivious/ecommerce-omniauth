class CallbacksController < Devise::OmniauthCallbacksController
  
  def passthru
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Idme") if is_navigational_format?
    else
      session["devise.idme_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end

# may not need this
   def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end



# 	binding.remote_pry
#         # @user = User.from_omniauth(request.env["omniauth.auth"])
#         # sign_in_and_redirect @user
#    	user = User.from_omniauth(request.env["omniauth.auth"])
#     @payload = request.env["omniauth.auth"].extra.raw.to_hash
#     session[:user_id] = user.id
#     flash[:notice] = "Signed in "
#     redirect_to root_url
#   end

#    def destroy
#     session[:user_id] = nil
#     redirect_to root_url, :notice => "Signed out!"
#   end


# end