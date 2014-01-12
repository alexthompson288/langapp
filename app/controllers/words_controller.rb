class WordsController < ApplicationController
  # GET /words
  # GET /words.json

  
  def index
    @category = Category.find(params[:category_id])
    @words = @category.words.where(:sentence => false)
    @sentences = @category.words.where(:sentence => true)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @words }
    end
  end

  # GET /words/1
  # GET /words/1.json
  def show
    @word = Word.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word }
    end
  end

  # GET /words/new
  # GET /words/new.json
  def new
    @category = Category.find(params[:category_id])
    @word = @category.words.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word }
    end
  end

  # GET /words/1/edit
  def edit
    @category = Category.find(params[:category_id])
    @word = @category.words.build
  end

  # POST /words
  # POST /words.json
  def create
    @category = Category.find(params[:category_id])
    @word = @category.words.build(params[:word])
      if @word.save
        flash[:notice] = "successfully saved word"
        redirect_to category_words_url(@category)
      else
        render :action => 'new'
      end

    
   
  end

  # PUT /words/1
  # PUT /words/1.json
  def update
    @category = Category.find(params[:category_id])
    @word = @category.words.build

    respond_to do |format|
      if @word.update_attributes(params[:word])
        format.html { redirect_to @word, notice: 'Word was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /words/1
  # DELETE /words/1.json
  def destroy
    @word = Word.find(params[:id])
    @word.destroy

    respond_to do |format|
      format.html { redirect_to words_url }
      format.json { head :no_content }
    end
  end
end
