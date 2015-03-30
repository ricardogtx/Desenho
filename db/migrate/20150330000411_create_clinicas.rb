class CreateClinicas < ActiveRecord::Migration
  def change
    create_table :clinicas do |t|
      t.string :nome
      t.string :endereco
      t.string :complemento
      t.string :municipio
      t.string :cep
      t.float :latitude
      t.float :longitude
      t.string :telefone1
      t.string :telefone2
      t.string :email
      t.string :publico
      t.string :publico_especifico
      t.string :sexo_publico
      t.string :modalidade

      t.timestamps null: false
    end
  end
end
