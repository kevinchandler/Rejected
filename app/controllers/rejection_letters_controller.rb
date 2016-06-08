class RejectionLettersController < ApplicationController
  before_action :set_rejection_letter, only: [:show, :edit, :update, :destroy]

  # GET /rejection_letters
  # GET /rejection_letters.json
  def index
    @rejection_letters = RejectionLetter.all
  end

  # GET /rejection_letters/1
  # GET /rejection_letters/1.json
  def show
  end

  # GET /rejection_letters/new
  def new
    @rejection_letter = RejectionLetter.new
  end

  # GET /rejection_letters/1/edit
  def edit
  end

  # POST /rejection_letters
  # POST /rejection_letters.json
  def create
    @rejection_letter = RejectionLetter.new(rejection_letter_params)

    respond_to do |format|
      if @rejection_letter.save
        format.html { redirect_to @rejection_letter, notice: 'Rejection letter was successfully created.' }
        format.json { render :show, status: :created, location: @rejection_letter }
      else
        format.html { render :new }
        format.json { render json: @rejection_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rejection_letters/1
  # PATCH/PUT /rejection_letters/1.json
  def update
    respond_to do |format|
      if @rejection_letter.update(rejection_letter_params)
        format.html { redirect_to @rejection_letter, notice: 'Rejection letter was successfully updated.' }
        format.json { render :show, status: :ok, location: @rejection_letter }
      else
        format.html { render :edit }
        format.json { render json: @rejection_letter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rejection_letters/1
  # DELETE /rejection_letters/1.json
  def destroy
    @rejection_letter.destroy
    respond_to do |format|
      format.html { redirect_to rejection_letters_url, notice: 'Rejection letter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rejection_letter
      @rejection_letter = RejectionLetter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rejection_letter_params
      params.fetch(:rejection_letter, {})
    end
end
