class PrototypesController < ApplicationController
  before_action :set_prototypes, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  def index
  end

  def new 
  end

  def create 
  end

  def destroy
  end

  def edit
  end

  def update
  end

  def show
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end