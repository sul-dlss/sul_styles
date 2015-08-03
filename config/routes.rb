SulStyles::Engine.routes.draw do
  root to: 'style_guide#index'
  get 'icons', to: 'style_guide#icons'
  get 'colors', to: 'style_guide#colors'
end
