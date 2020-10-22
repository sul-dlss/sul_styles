SulStyles::Engine.routes.draw do
  get 'style_guide', to: 'sul_styles/style_guide#index'
  get 'style_guide/icons', to: 'sul_styles/style_guide#icons'
  get 'style_guide/colors', to: 'sul_styles/style_guide#colors'

  resource :feedback_form, path: 'feedback', only: [:new, :create]
  get 'feedback' => 'feedback_forms#new'
end
