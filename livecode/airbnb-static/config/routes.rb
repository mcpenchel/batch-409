Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'flats#index', as: 'flats'
  get '/flats/:id', to: 'flats#show', as: 'flat'

  # localhost:3000/flats/14      -> params[:id] = 14
  # localhost:3000/flats/985     -> params[:id] = 985
  # localhost:3000/flats/bananas -> params[:id] = bananas
  # localhost:3000/flats/666     -> params[:id] = 666


end
