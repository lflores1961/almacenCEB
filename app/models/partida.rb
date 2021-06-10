class Partida < ApplicationRecord
  belongs_to :concepto
  
  def mix_clave_desc
    "#{clave} - #{description}"
  end
end
