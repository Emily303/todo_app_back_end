Rails.application.routes.draw do
get '/todo/index' => 'todo#index'
get '/todo/show/:id'  => 'todo#show'
end
