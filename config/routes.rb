Rails.application.routes.draw do
    
    root to: 'pages#home'

    resources :listings
    get 'listings/index' => 'listings#index'
    
    get 'pages/impressum' => 'pages#impressum'
    get 'pages/termsAndConditions' => 'pages#termsAndConditions'
    
    devise_for :users,
               path:        '',
               path_names:  {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
               controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}
    
    resources :users, only: [:show]
    
    resources :tradeinfos do
        member do
            get 'eligibility'
            get 'accepted'
            get 'rejected'
            get 'sucessfullyprocessed'
        end
        
        resources :buyers, only: [:create, :destroy, :new, :update]
        resources :financials, only: [:create, :destroy, :new, :update]
        resources :bankaccounts, only: [:create, :destroy, :new, :update]
        resources :officialdocuments, only: [:create, :destroy, :new, :update]
        resources :insurances do
            member do
                get 'hermeskycone'
                get 'hermeskyctwo'
                get 'hermeskycthree'
                get 'hermeskycfour'
                get 'hermeskycfive'
                get 'hermeskycsummary'
                get 'insuranceresult'
                get 'thankinsurance'
            end
        end
        
        get 'buyers/index' => 'buyers#index'
        get 'financials/index' => 'financials#index'
        get 'bankaccounts/index' => 'bankaccounts#index'
        get 'officialdocuments/index' => 'officialdocuments#index'
        get 'insurances/index' => 'insurances#index'
    end
end