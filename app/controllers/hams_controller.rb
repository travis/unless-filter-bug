class HamsController < ApplicationController
  before_filter :first, only: :eggs
  before_filter :second, unless: lambda {session[:second_unless] = 22; false}, only: :eggs

  def index
    render inline: session.to_s
  end

  def eggs
    render inline: "eggs"
  end



  def first
    session[:second] = nil
    session[:second_unless] = nil
    redirect_to(hams_path)
  end

  def second
    session[:second] = 2
  end
end
