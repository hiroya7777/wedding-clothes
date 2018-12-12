class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path , success:'登録に成功しました'
    else
      flash.now[:danger] = 'ログインに失敗しました'
      render new
    end
  end

  def destroy
      log_out
      redirect_to root_url, info: 'ログアウトしました'
  end

  private
    def log_in(user)
      sessions[:user_id] = user.id
    end

    def log_out
      session.delete(:user_id)
      @current_user = nil
    end

    def session_params
      params.require(:session).permit(:AccountName,:password)
    end
end