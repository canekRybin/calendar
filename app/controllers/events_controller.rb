class EventsController < ApplicationController
  # GET /events
  # GET /events.json
  def index
    @events = current_user.events.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  
  # GET /events
  # GET /events.json
  def all_events
    @events = Event.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  # GET /events/1
  # GET /events/1.json
  def show
    @event = current_user.events.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event }
    end
  end

  # GET /events/new
  # GET /events/new.json
  def new
    #@user_id = current_user.id
    @repeats = Repeat.all   #.collect { |repeat| [repeat.id, repeat.text]}
    @event = Event.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event}
    end
  end

  # GET /events/1/edit
  def edit
    @user = current_user 
    @repeats = Repeat.all 
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.json
  def create
    @repeats = Repeat.all 
    @event = current_user.events.build(params[:event])
 
    respond_to do |format|
      if @event.save
        format.html { redirect_to current_user, notice: 'Event was successfully created.' }
        format.json { render json: @event, status: :created, location: @event }
      else
        format.html { render action: "new" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.json
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event = Event.find
    @event.destroy

    respond_to do |format|
      format.html { redirect_to calendar_url }
      format.json { head :ok }
    end
  end
end
