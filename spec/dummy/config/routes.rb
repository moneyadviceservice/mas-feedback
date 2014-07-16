Rails.application.routes.draw do
  scope "/:locale", :locale => /en|cy/ do
    get '/frontend', to: 'frontend#index', format: false
    get '/frontend/with_config', to: 'frontend#with_config'
    get '/frontend/without_config', to: 'frontend#without_config'
    get '/frontend/called_twice', to: 'frontend#called_twice'
  end
end
