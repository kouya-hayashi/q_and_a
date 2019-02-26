Rails.application.routes.draw do
  get 'answers/edit'
  #get 'questions/index'
  #get 'questions/show'
  #get 'questions/new'
  #get 'questions/edit'

#ルートメソッドを使用する場合は/ではなく#を使う
#ルートにアクセスすると、コントローラーのindexアクションにいく
root "questions#index"
#一般的なルーティングを自動で作成
#記述するだけで反映される。
  resources :questions do
    resources :answers
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
