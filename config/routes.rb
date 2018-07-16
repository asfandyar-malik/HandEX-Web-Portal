Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile', sign_up: 'registration'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations'}

  resources :users, only: [:show]

  resources :documents, except: [:edit] do
    member do
      get 'auxillary'
      get 'description'
      get 'photo_upload'
      get 'location'
      get 'year'
      get 'document_type'
    end

    resources :photos, only: [:create, :destroy]
  end

  resources :invoices, except: [:edit] do
    member do
      get 'auxillary'
      get 'attachment_upload'
      get 'year'
      get 'location'
      get 'document_type'
    end

    resources :attachments, only: [:create, :destroy]

  end

  resources :tradeinfos do
    member do
      get 'exportinformation'
      get 'importinformation'
      get 'thank'
      get 'eligibility'
      get 'buyers'
      get 'financials'
      get 'accepted'
      get 'rejected'
      get 'bankinformationexporter'
      get 'eulerhermesredirect'
      get 'sucessfullyprocessed'
      get 'testTwo'
    end
  end

  resources :buyers
  resources :financials
  resources :insurances
  resources :bankaccounts

  # get 'bankaccount/index'
  # get 'bankaccount/new'
  # get 'bankaccount/create'
  # get 'bankaccount/update'
  # get 'insurances/index'
  # get 'insurances/new'
  # get 'insurances/create'
  # get 'insurances/update'
  # get 'financial/index'
  # get 'financial/new'
  # get 'financial/create'
  # get 'financial/update'
  # get 'buyer/index'
  # get 'buyer/new'
  # get 'buyer/create'
  # get 'buyer/update'

end