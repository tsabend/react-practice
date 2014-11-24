Rails.application.routes.draw do
  get '/' => 'comments#index'
  post '/' => 'comments#create'
end
