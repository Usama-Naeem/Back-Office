Rails.application.routes.draw do
  get 'admin', to: 'admin#dashboard'
  get 'admin/members'
  get 'admin/providers'
  get 'admin/assesment'

  root "admin#dashboard"
  devise_for :admins

  devise_scope :admin do  
    get '/admins/sign_out' => 'devise/sessions#destroy'     
 end
end
