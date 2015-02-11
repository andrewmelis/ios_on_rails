HumonApi::Application.routes.draw do
  scope module: :api, defaults: { format: 'json' } do
    namespace :v1 do
      # resources go here
    end
  end
end
