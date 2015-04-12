class Clinica < ActiveRecord::Base

  def self.import(file)
    CSV.foreach(file.path, headers: true, encoding: "iso-8859-1:UTF-8") do |row|
      Clinica.create! row.to_hash
    end
  end
end
