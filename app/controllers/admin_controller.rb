class AdminController < ApplicationController
  def dashboard
  end

  def members
    @admins = Admin.all
  end

  def show_member
    @admin = Admin.find(params[:id])
  end
end
