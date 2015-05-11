class ParsersController < ApplicationController

def import
    Clinica.import(params[:file])
    redirect_to clinicas_url, notice:  "Clinicas importadas com sucesso"
  end


  def parser_params
      params.require(:clinica).permit(:nome, :endereco, :complemento, :municipio, :cep, :latitude, :longitude, :telefone1, :telefone2, :mail, :publico, :publico_especifico, :sexo_publico, :modalidade)
    end
end
