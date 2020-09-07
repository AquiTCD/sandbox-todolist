Rails.application.routes.draw do
  root "home#index"
  devise_for :user, skip: :all
  devise_for(:database_authentications,
             class_name: "User::DatabaseAuthentication",
             controllers: { sessions: "user/database_authentication/sessions" },
             path_names: { sign_in: "login", sign_out: "logout" })
  devise_for(:registrations,
             class_name: "User::Registration",
             controllers: { confirmations: "user/registrations" })
  devise_scope :registration do
    get "/registration/sign_up", to: "user/registrations#new", as: "new_user_registration"
    get "/registration/edit", to: "user/registrations#edit", as: "edit_user_registration"
    post "/registration/finish", to: "user/registrations#finish", as: "finish_user_registration"
  end
  devise_for(:twitter_authentications,
             class_name: "User::TwitterAuthentication",
             controllers: { omniauth_callbacks: "user/twitter_authentication/omniauth_callbacks" })
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
