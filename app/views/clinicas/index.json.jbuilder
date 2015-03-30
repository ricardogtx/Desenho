json.array!(@clinicas) do |clinica|
  json.extract! clinica, :id, :nome, :endereco, :complemento, :municipio, :cep, :latitude, :longitude, :telefone1, :telefone2, :email, :publico, :publico_especifico, :sexo_publico, :modalidade
  json.url clinica_url(clinica, format: :json)
end
