Rails.application.routes.draw do
  namespace :admin do
    root to: "homes#top"
  end
  scope module: :public do
    root to: "homes#top"
  end
# 顧客用
devise_for :customer, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions',
  passwords: 'public/passwords'
}

# 管理者用
devise_for :admin, controllers: {
  sessions: "admin/sessions"
}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
