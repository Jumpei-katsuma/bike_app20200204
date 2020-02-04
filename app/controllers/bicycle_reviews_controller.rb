class BicycleReviewsController < ApplicationController
  before_action :set_bicycle_review, only: [:show, :edit, :update, :destroy]

  # GET /bicycle_reviews
  # GET /bicycle_reviews.json
  def index
    @bicycle_reviews = BicycleReview.all
  end

  # GET /bicycle_reviews/1
  # GET /bicycle_reviews/1.json
  def show
  end

  # GET /bicycle_reviews/new
  def new
    @bicycle_review = BicycleReview.new
  end

  # GET /bicycle_reviews/1/edit
  def edit
  end

  # POST /bicycle_reviews
  # POST /bicycle_reviews.json
  def create
    @bicycle_review = BicycleReview.new(bicycle_review_params)

    respond_to do |format|
      if @bicycle_review.save
        format.html { redirect_to @bicycle_review, notice: 'Bicycle review was successfully created.' }
        format.json { render :show, status: :created, location: @bicycle_review }
      else
        format.html { render :new }
        format.json { render json: @bicycle_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bicycle_reviews/1
  # PATCH/PUT /bicycle_reviews/1.json
  def update
    respond_to do |format|
      if @bicycle_review.update(bicycle_review_params)
        format.html { redirect_to @bicycle_review, notice: 'Bicycle review was successfully updated.' }
        format.json { render :show, status: :ok, location: @bicycle_review }
      else
        format.html { render :edit }
        format.json { render json: @bicycle_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bicycle_reviews/1
  # DELETE /bicycle_reviews/1.json
  def destroy
    @bicycle_review.destroy
    respond_to do |format|
      format.html { redirect_to bicycle_reviews_url, notice: 'Bicycle review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bicycle_review
      @bicycle_review = BicycleReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bicycle_review_params
      params.require(:bicycle_review).permit(:review_text, :bicycle_id, :user_id, :start, :end, :star)
    end
end
