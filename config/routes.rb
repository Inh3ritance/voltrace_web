Rails.application.routes.draw do

  get 'contact_input/new'

  get '/about', to: 'voltrace_main#about'

  get '/contact_us', to: 'voltrace_main#contact_us'

  get '/dreamjump_privacy', to: 'voltrace_main#dreamjump_privacy_policy'

  get '/magnets_privacy', to: 'voltrace_main#magnets_privacy_policy'

  get '/textbookcheck_privacy', to: 'voltrace_main#textbookcheck_privacy_policy'

  root 'voltrace_main#home'

end
