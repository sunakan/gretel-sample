Rails.application.routes.draw do
  #root "myapp#index"
  scope "/myapp", controller: :myapp do
    get "/",          action: :index
    get "/hoge",      action: :hoge
    get "/hoge/fuga", action: :fuga
  end
end
