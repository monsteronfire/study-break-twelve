class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @links = Link.all
  end

  def new
    @link = current_user.links.build
  end

  def create
    @link = current_user.links.build(link_params)

    if @link.save
      redirect_to @link
    else
      render 'new'
    end
  end

  def show
  end

  def update
    if @link.update(link_params)
      redirect_to @link
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @link.destroy
    redirect_to root_path
  end

  private
  def set_link
    @link = Link.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
