class HomeController < ApplicationController
  def index
    @salas = SalaBatePapo.all
  end

  def logout
    cookies[:user_id] = nil
    redirect_to root_path
  end
end
