class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.authenticate(params[:email], [:password])
    if user.present?
      session[:user_id] = user_id
      redirect_to root_url, notice: 'Вы успешно зашли'
    else
      flash.now.alert = 'Неправильная пара email/пароль'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Вы вышли. Ждем Вас снова!'
  end

end
