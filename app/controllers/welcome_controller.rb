class WelcomeController < ApplicationController
  before_filter :devise_mapping

  def new
  end

  def sign_up
  end

  def retrieve
  end

  def index
  end

  protected
    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
      @resource_name = "user"
    end
end
