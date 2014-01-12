class ContentusersController < ApplicationController
  # GET /contentusers
  # GET /contentusers.json
  def index
    @contentusers = Contentuser.where(:user_id => current_user.id)
    

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contentusers }
    end
  end

  # GET /contentusers/1
  # GET /contentusers/1.json
  def show
    @contentuser = Contentuser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contentuser }
    end
  end

  # GET /contentusers/new
  # GET /contentusers/new.json
  def new
    @contentuser = Contentuser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contentuser }
    end
  end

  # GET /contentusers/1/edit
  def edit
    @contentuser = Contentuser.find(params[:id])
  end

  # POST /contentusers
  # POST /contentusers.json
  def create
    @contentuser = Contentuser.new(params[:contentuser])

    respond_to do |format|
      if @contentuser.save
        format.html { redirect_to @contentuser, notice: 'Contentuser was successfully created.' }
        format.json { render json: @contentuser, status: :created, location: @contentuser }
        
      else
        format.html { render action: "new" }
        format.json { render json: @contentuser.errors, status: :unprocessable_entity }
      
      end
    end
  end

  # PUT /contentusers/1
  # PUT /contentusers/1.json
  def update
    @contentuser = Contentuser.find(params[:id])

    respond_to do |format|
      if @contentuser.update_attributes(params[:contentuser])
        format.html { redirect_to @contentuser, notice: 'Contentuser was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contentuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contentusers/1
  # DELETE /contentusers/1.json
  def destroy
    @contentuser = Contentuser.find(params[:id])
    @contentuser.destroy

    respond_to do |format|
      format.html { redirect_to contentusers_url }
      format.json { head :no_content }
    end
  end
end
