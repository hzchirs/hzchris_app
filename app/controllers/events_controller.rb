class EventsController < ApplicationController

  before_action :find_event, only: [:show, :edit, :update, :destroy]
  
  def index
    @events = Event.page(params[:page]).per(5)
  end

  def show

  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      flash[:success] = "Event was successfully created!"
      redirect_to action: :index
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @event.update_attributes(event_params)
      flash[:success] = "Event was successfully updated!"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event.destroy
    flash[:success] = "Event was successfully deleted!"
    redirect_to action: :index
  end


  # Below manipulate Strong Parameters
  private

    def event_params
      params.require(:event).permit(:name, :description)
    end


  protected
    def find_event
      @event = Event.find(params[:id])
    end

end

