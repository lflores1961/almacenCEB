class Search < ApplicationRecord

  def search_products
    products = Product.all

    products = products.where([ 'code LIKE ?', code ]) if code.present?
    products = products.where(['name LIKE ?', name]) if name.present?
    products = products.where(['brand LIKE ?', brand]) if brand.present?
    products = products.where( supplier_id: supplier_id.to_i ) if supplier_id.present?
    products = products.where( capitulo_id: capitulo_id.to_i ) if capitulo_id.present?
    products = products.where( concepto_id: concepto_id.to_i ) if concepto_id.present?
    products = products.where( partida_id: partida_id.to_i ) if partida_id.present?

    return products
  end
  
  def self.clean_up_searches
    Search.delete_all
  end
  
end
