class User::TwitterAuthentication::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # skip_before_action :authenticate_user!
  def facebook
    callback_from :facebook
  end

  def twitter
    callback_from :twitter
  end

  private

    def callback_from(provider)
      auth = request.env["omniauth.auth"]
      return redirect_to root_path unless auth

      result = OAuthAuthenticater.call(auth)
      flash[:notice] = I18n.t("devise.omniauth_callbacks.success", kind: provider.to_s.capitalize)
      sign_in_and_redirect result.user, event: :authentication
    end
end
