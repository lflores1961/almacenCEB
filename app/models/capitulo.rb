class Capitulo < ApplicationRecord
  has_many :conceptos, dependent: :destroy

  def mix_clave_desc
    "#{clave} - #{description}"
  end
end
