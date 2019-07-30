Rails.application.routes.draw do
    
    
    devise_for :users, only: :omniauth_callbacks,
               controllers: {omniauth_callbacks: 'omniauth_callbacks'}
    
    scope "(:locale)", locale: /en|es|de/ do
    
        get 'omniauth/:provider' => 'omniauth#localized', as: :localized_omniauth
        
        devise_for :users,
                   path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
                   skip: :omniauth_callbacks,
                   controllers: {omniauth_callbacks: 'omniauth_callbacks', passwords: 'passwords', registrations: 'registrations'}
        
        get '/:locale' => 'users#submitted_applications'
        root to: 'users#submitted_applications'
        
        get 'pages/landing' => 'pages#landing'
        get 'pages/impressum' => 'pages#impressum'
        get 'pages/terms_and_conditions' => 'pages#terms_and_conditions'
        get 'pages/registration_terms_and_conditions' => 'pages#registration_terms_and_conditions'
        get 'pages/guidelines' => 'pages#guidelines'
        get 'pages/advice' => 'pages#advice'
        get 'pages/contacted_exporter' => 'pages#contacted_exporter'
        get 'pages/broker_option' => 'pages#broker_option'
        get 'pages/welcome' => 'pages#welcome'
        get 'pages/broker_default' => 'pages#broker_default'
        get 'pages/products' => 'pages#products'
        get 'pages/advice_insurance' => 'pages#advice_insurance'
        get 'pages/advice_credit' => 'pages#advice_credit'
        get 'pages/advice_refinance' => 'pages#advice_refinance'
        get 'pages/invite_or_fill_yourself' => 'pages#invite_or_fill_yourself'
        get 'pages/application_submitted' => 'pages#application_submitted'
        get 'pages/importer_information_saved' => 'pages#importer_information_saved'
        
        resources :insurances
        resources :export_applications
        resources :credits
        resources :invite_exporters
        resources :refinances
        resources :onboardings
        resources :importer_informations

        resources :users, only: [:show] do
            member do
                get 'submitted_applications'
                get 'approved_applications'
                get 'draft_applications'
                get 'all_applications'
                get 'invited_exporter'
            end
        end
    end
end
