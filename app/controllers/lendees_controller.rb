class LendeesController < ApplicationController
  # GET /lendees
  # GET /lendees.json
  def index
    @lendees = Lendee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lendees }
    end
  end

  # GET /lendees/1
  # GET /lendees/1.json
  def show
    @lendee = Lendee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lendee }
    end
  end

  # GET /lendees/new
  # GET /lendees/new.json
  def new
    @lendee = Lendee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lendee }
    end
  end

  # GET /lendees/1/edit
  def edit
    @lendee = Lendee.find(params[:id])
  end

  # POST /lendees
  # POST /lendees.json
  def create
    @lendee = Lendee.new(params[:lendee])

    respond_to do |format|
      if @lendee.save
        format.html { redirect_to @lendee, notice: 'Lendee was successfully created.' }
        format.json { render json: @lendee, status: :created, location: @lendee }
      else
        format.html { render action: "new" }
        format.json { render json: @lendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lendees/1
  # PUT /lendees/1.json
  def update
    @lendee = Lendee.find(params[:id])

    respond_to do |format|
      if @lendee.update_attributes(params[:lendee])
        format.html { redirect_to @lendee, notice: 'Lendee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lendees/1
  # DELETE /lendees/1.json
  def destroy
    @lendee = Lendee.find(params[:id])
    @lendee.destroy

    respond_to do |format|
      format.html { redirect_to lendees_url }
      format.json { head :no_content }
    end
  end
end
