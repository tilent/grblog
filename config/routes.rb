Blog::Application.routes.draw do
  resources :posts do
    resources :comments
  end

  scope '/admin' do
    resources :admin_posts
  end
  get 'admin'  => 'admin#index'
  root :to => 'posts#index'
end
