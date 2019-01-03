Rails.application.routes.draw do
  get '/result' => 'add#json_sum'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
