Rails.application.routes.draw do
  scope "/:locale", :locale => /en|cy/ do
    get '/frontend', to: 'frontend#index', format: false
  end
end
