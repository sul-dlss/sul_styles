SulStyles::Engine.routes.draw do
  get 'icons', to: 'style_guide#icons'
  get 'colors', to: 'style_guide#colors'
end
