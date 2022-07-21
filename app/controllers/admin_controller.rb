class AdminController < ApplicationController
  def dashboard
  end

  def assesment
  end

  def providers
  end

  def members
    @admins = Admin.all.page(params[:page])
  end

  def show_member
    @admin = Admin.find(params[:id])
  end
end
