class LinksController < ApplicationController
  before_action :authenticate_user!

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
  end

  def show
  end

  def edit
  end

  def delete
  end

  private
  def link_params
    params.require(:link).permit(:title, :url)
  end
end
