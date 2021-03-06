class PinsController < ApplicationController
  before_action :set_pin, only: [ :show, :edit, :update, :destroy, :upvote, :downvote ]
  before_action :authenticate_user!, except: [ :index, :show ]

  def index
    @pins = Pin.all
  end

  def show
  end

  def new
    @pin = current_user.pins.build
  end

  def create
    @pin = current_user.pins.build(pin_params)

    if @pin.save
      redirect_to @pin
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin
    else
      render 'edit'
    end
  end

  def destroy
    @pin.destroy
    redirect_to root_path
  end

  def upvote
    @pin.upvote_by current_user
    redirect_to @pin
  end

  def downvote
    @pin.downvote_by current_user
    redirect_to @pin
  end

  private

  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:id, :title, :description, :user_id, :photo)
  end
end
