class EventsController < ApplicationController

  before_action :logged_in_user, only: [:new, :create]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to events_path, notice: 'Event was successfully created.'
    else
      #flash.now[:danger] = 'Post not saved.'
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees
  end

  def index
    # @events = Event.all

    @prev_events = Event.past
    @upcoming_events = Event.upcoming
  end

  private

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
