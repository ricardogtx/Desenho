class ParsersController < ApplicationController

  def index
	  @parsers = Parser.all
  end

  def new
	  @parsers = Parser.new
  end

  def set_parser
	  @parsers = Parser.find(params[:id])
  end


  def import
    Parser.import(params[:file])
    redirect_to root_url, notice:  "Clinicas importadas com sucesso"
  end


  def parser_params
      params.require(:clinica).permit(:nome, :endereco, :complemento, :municipio, :cep, :latitude, :longitude, :telefone1, :telefone2, :mail, :publico, :publico_especifico, :sexo_publico, :modalidade)
    end
end
