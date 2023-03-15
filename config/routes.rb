Rails.application.routes.draw do
  resources :users do
    collection do
      delete :trash
    end
  end
end
