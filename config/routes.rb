# Plugin's routes
# See: http://guides.rubyonrails.org/routing.html
get '/projects/:project_id/timer', :to => 'times#index', as: 'timer_index'
get '/projects/:project_id/timer/:user_id', :to => 'times#show', as: 'timer_show'
