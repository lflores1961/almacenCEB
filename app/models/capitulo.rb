class Capitulo < ApplicationRecord
  has_many :conceptos

  def mix_clave_desc
    "#{clave} - #{description}"
  end
end
