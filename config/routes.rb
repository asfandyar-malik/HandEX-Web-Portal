Rails.application.routes.draw do
    
    scope "(:locale)", locale: /en|es|de/ do
    
        get '/:locale' => 'insurances#index'
        root to: 'insurances#index'
        
        get 'pages/landing' => 'pages#landing'
        get 'pages/impressum' => 'pages#impressum'
        get 'pages/termsAndConditions' => 'pages#termsAndConditions'
        get 'pages/submitted' => 'pages#submitted'
        get 'pages/guidelines' => 'pages#guidelines'
        get 'pages/guidelines' => 'pages#guidelines'
        get 'pages/advice' => 'pages#advice'
        
        resources :insurances do
          member do
            get 'submitted_applications'
            get 'approved_applications'
            get 'user_summary'
            get 'pdf_user_summary'
          end
        end

        resources :imports
        
        resources :documents do
            member do
                get 'ocr'
                get 'extract'
            end
        end
    end
    
    devise_for :users,
               path:        '',
               path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
               controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

    resources :users, only: [:show]
end
