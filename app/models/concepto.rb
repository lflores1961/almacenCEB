class Concepto < ApplicationRecord
  belongs_to :capitulo
  has_many :partidas

  def mix_clave_desc
    "#{clave} - #{description}"
  end
end
