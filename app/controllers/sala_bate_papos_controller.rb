class SalaBatePaposController < ApplicationController
  before_action :set_sala_bate_papo, only: %i[ show edit update destroy ]

  # GET /sala_bate_papos or /sala_bate_papos.json
  def index
    @sala_bate_papos = SalaBatePapo.all
  end

  # GET /sala_bate_papos/1 or /sala_bate_papos/1.json
  def show
  end

  # GET /sala_bate_papos/new
  def new
    @sala_bate_papo = SalaBatePapo.new
  end

  # GET /sala_bate_papos/1/edit
  def edit
  end

  # POST /sala_bate_papos or /sala_bate_papos.json
  def create
    @sala_bate_papo = SalaBatePapo.new(sala_bate_papo_params)

    respond_to do |format|
      if @sala_bate_papo.save
        format.html { redirect_to root_path, notice: "Sala bate papo was successfully created." }
        format.json { render :show, status: :created, location: @sala_bate_papo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sala_bate_papo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sala_bate_papos/1 or /sala_bate_papos/1.json
  def update
    respond_to do |format|
      if @sala_bate_papo.update(sala_bate_papo_params)
        format.html { redirect_to @sala_bate_papo, notice: "Sala bate papo was successfully updated." }
        format.json { render :show, status: :ok, location: @sala_bate_papo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sala_bate_papo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sala_bate_papos/1 or /sala_bate_papos/1.json
  def destroy
    @sala_bate_papo.destroy
    respond_to do |format|
      format.html { redirect_to sala_bate_papos_url, notice: "Sala bate papo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sala_bate_papo
      @sala_bate_papo = SalaBatePapo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sala_bate_papo_params
      params.require(:sala_bate_papo).permit(:topico)
    end
end
