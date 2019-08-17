class SessionController < ApplicationController
skip_before_action :require_login

 def new  #ログインページを表示
 end
  
 def create    #ユーザ認証とセッションの保存
  #Userモデルからユーザ名、パスワードが一致するユーザを検索
  @user = User.find_by(name: params[:name], password: params[:password])

  #ユーザが検索されればセッションにユーザ情報を保存
  #ユーザが見つからなければセッション情報を破棄（nil）
  if @user
    session[:user_name] = @user
    redirect_to("/")    #トップページへ画面遷移
  else
    session[:user_name] = nil
    redirect_to("/login")    #ログインページへ画面遷移
  end
 end
  
 def destroy    #セッション情報を破棄（ログアウト）
  session[:user_name] = nil
  redirect_to("/login")
 end

 end
  
 def destroy    #セッション情報を破棄（ログアウト）
  session[:user_name] = nil
  redirect_to("/login")
 end

end