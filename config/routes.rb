Rails.application.routes.draw do

  namespace :admin do
    resources :uploaded_files do
      get 'download', :on => :member
    end
  end

end
