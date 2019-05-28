Rails.application.routes.draw do
    
  resources :invite_exporters
  resources :export_applications

  scope "(:locale)", locale: /en|es|de/ do
    
        get '/:locale' => 'insurances#index'
        root to: 'insurances#submitted_applications'
        
        get 'pages/landing' => 'pages#landing'
        get 'pages/impressum' => 'pages#impressum'
        get 'pages/termsAndConditions' => 'pages#termsAndConditions'
        get 'pages/submitted_application' => 'pages#submitted_application'
        get 'pages/guidelines' => 'pages#guidelines'
        get 'pages/advice' => 'pages#advice'
        get 'pages/contacted_exporter' => 'pages#contacted_exporter'
        get 'pages/broker_option' => 'pages#broker_option'
        get 'pages/overview' => 'pages#overview'
        get 'pages/welcome' => 'pages#welcome'
        get 'pages/broker_default' => 'pages#broker_default'
        get 'pages/products' => 'pages#products'
        get 'pages/advice_insurance' => 'pages#advice_insurance'
        get 'pages/advice_only_insurance' => 'pages#advice_only_insurance'
        get 'pages/invite_or_fill_yourself' => 'pages#invite_or_fill_yourself'

        resources :insurances do
          member do
            get 'submitted_applications'
            get 'approved_applications'
            get 'draft_applications'
            get 'all_applications'
            get 'user_summary'
          end
        end

    end
    
    devise_for :users,
               path:        '',
               path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
               controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

    resources :users, only: [:show]
end
