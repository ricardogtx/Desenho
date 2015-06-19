class ClinicasController < ApplicationController
  before_action :set_clinica, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token, :only => [:id_of_city]
  # GET /clinicas
  # GET /clinicas.json
  def index
    @search = Clinic.search(params[:q])
    @clinics = @search.result.paginate(:page => params[:page]).per_page(20)
  end

  # GET /clinicas/1
  # GET /clinicas/1.json
  def show
    @clinic = Clinic.find(params[:id])
  end

  # GET /clinicas/new
  def new
    @clinica = Clinica.new
  end

  def update
    @clinic = current_user.clinic
    if @clinic.update_attributes(clinic_params)
      redirect_to :users, notice: 'Dados atualizados com sucesso.'
    else
      render :users_clinic_edit
    end
  end

  def id_of_city
    state = State.find_by_uf(params[:uf])

    if request.xhr?
      render :json => {city_id: state.id}
    end
  end

  # GET /clinicas/1/edit
  def edit
  end

  # POST /clinicas
  # POST /clinicas.json
  def create
    @clinica = Clinica.new(clinica_params)

    respond_to do |format|
      if @clinica.save
        format.html { redirect_to @clinica, notice: 'Clinica was successfully created.' }
        format.json { render :show, status: :created, location: @clinica }
      else
        format.html { render :new }
        format.json { render json: @clinica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clinicas/1
  # DELETE /clinicas/1
  # DELETE /clinicas/1.json
  def destroy
    @clinica.destroy
    respond_to do |format|
      format.html { redirect_to clinicas_url, notice: 'Clinica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clinica
      @clinica = Clinica.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clinica_params
      params.require(:clinica).permit(:nome, :endereco, :complemento, :municipio, :cep, :latitude, :longitude, :telefone1, :telefone2, :mail, :publico, :publico_especifico, :sexo_publico, :modalidade)
    end

    def state_params
    params.require(:state).permit(:name, :uf)
    end
end
