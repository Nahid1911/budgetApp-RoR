class TranDetailsController < ApplicationController
  before_action :set_tran_detail, only: %i[ show edit update destroy ]

  # GET /tran_details or /tran_details.json
  def index
    @tran_details = TranDetail.all
  end

  # GET /tran_details/1 or /tran_details/1.json
  def show
  end

  # GET /tran_details/new
  def new
    @tran_detail = TranDetail.new
    @available_groups = TranGroup.all
  end

  # GET /tran_details/1/edit
  def edit
  end

  # POST /tran_details or /tran_details.json
  def create
    @tran_detail = TranDetail.new(tran_detail_params)
    @tran_detail.author = current_user
    @available_groups = TranGroup.all

    respond_to do |format|
      if @tran_detail.save
        format.html { redirect_to tran_detail_url(@tran_detail), notice: "Tran detail was successfully created." }
        format.json { render :show, status: :created, location: @tran_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tran_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tran_details/1 or /tran_details/1.json
  def update
    respond_to do |format|
      if @tran_detail.update(tran_detail_params)
        format.html { redirect_to tran_detail_url(@tran_detail), notice: "Tran detail was successfully updated." }
        format.json { render :show, status: :ok, location: @tran_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tran_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tran_details/1 or /tran_details/1.json
  def destroy
    @tran_detail.destroy

    respond_to do |format|
      format.html { redirect_to tran_details_url, notice: "Tran detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tran_detail
      @tran_detail = TranDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tran_detail_params
      params.require(:tran_detail).permit(:itemDetails, :author_id, :amount, :tran_groups_id)
    end
end
