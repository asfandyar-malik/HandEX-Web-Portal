Rails.application.routes.draw do
    
  resources :importer_informations
  resources :invite_importers
    scope "(:locale)", locale: /en|es|de/ do
        
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
        
        resources :insurances
        resources :export_applications
        resources :credits
        resources :invite_exporters
        resources :refinances
        resources :onboardings

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
    
    devise_for :users,
               path:        '',
               path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
               controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
    
end
