SulStyles::Engine.routes.draw do
  get '/styleguide/icons', to: 'style_guide#icons'
  get '/styleguide/colors', to: 'style_guide#colors'
end
