class EventsController < ApplicationController

  before_action :logged_in_user, only: [:new, :create]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to events_path, notice: 'Events was successfully created.'
    else
      #flash.now[:danger] = 'Post not saved.'
      render 'new'
    end
  end

  def show
  end

  def index
    @events = Event.all
  end

  def event_params
    params.require(:event).permit(:description)
  end
end
