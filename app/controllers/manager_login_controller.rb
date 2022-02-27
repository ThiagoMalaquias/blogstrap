class ManagerLoginController < ApplicationController
  layout 'blank'
  def login
    @manager = Manager.new
  end

  def sigin
    manager = Manager.login(manager_params[:email], manager_params[:password])
    if manager.present?
      value = { id: manager.id, name: manager.name, email: manager.email}
      cookies[:manager] = { value: value.to_json, expires: 1.year, httponly: true }
      redirect_to root_path
    else
      flash[:error] = "Email ou Senha Invalidos"
      redirect_to manager_login_path
    end
  end

  def logout
    cookies[:manager] = nil
    redirect_to manager_login_path
  end

  private

  def manager_params
    params.require(:manager).permit(:email, :password)
  end
end
