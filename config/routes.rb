Rails.application.routes.draw do

  get '/about', to: 'voltrace_main#about'

  get '/contact_us', to: 'voltrace_main#contact_us'

  get '/privacy_policy', to: 'voltrace_main#privacy_policy'

  root 'voltrace_main#home'
end
