class MensagemsController < ApplicationController
  before_action :set_mensagem, only: %i[ show edit update destroy ]

  # GET /mensagems or /mensagems.json
  def index
    @mensagems = Mensagem.all
  end

  # GET /mensagems/1 or /mensagems/1.json
  def show
  end

  # GET /mensagems/new
  def new
    @mensagem = Mensagem.new
  end

  # GET /mensagems/1/edit
  def edit
  end

  # POST /mensagems or /mensagems.json
  def create
    @mensagem = Mensagem.new(mensagem_params)
    @mensagem.usuario_id = @current_user.id
    if @mensagem.save
      ActionCable.server.broadcast 'messages', 
        mensagem: @mensagem.conteudo,
        usuario: @current_user.nome
    end
  end

  # PATCH/PUT /mensagems/1 or /mensagems/1.json
  def update
    respond_to do |format|
      if @mensagem.update(mensagem_params)
        format.html { redirect_to @mensagem, notice: "Sala bate papo was successfully updated." }
        format.json { render :show, status: :ok, location: @mensagem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mensagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mensagems/1 or /mensagems/1.json
  def destroy
    @mensagem.destroy
    respond_to do |format|
      format.html { redirect_to mensagems_url, notice: "Sala bate papo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mensagem
      @mensagem = Mensagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mensagem_params
      params.require(:mensagem).permit(:conteudo, :sala_bate_papo_id)
    end
end
