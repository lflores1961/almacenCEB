class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def options
    @options = [
      {:letrero => "Almacen", :submenu =>
        [
          {:opcion => "Ingresar artículos", :ruta => 'new_input_path'},
          {:opcion => "Inventario", :ruta => '#'}, 
          {:opcion => "Salidas", :ruta => '#'}
        ],
        :macro_ruta => '#'
      },
      {:letrero => "Proveedores", :submenu =>
        [
          {:opcion => "Indice", :ruta => 'suppliers_path'}
        ],
        :macro_ruta => '#'
      },
      {:letrero => "Productos", :submenu =>
        [
          {:opcion => "Index", :ruta => 'products_path'}, 
          {:opcion => "Autorización", :ruta => '#'}
        ],
        :macro_ruta => '#'
      },
      {:letrero => "Usuarios", :submenu =>
        [
          {:opcion => "Indice", :ruta => 'users_url'}
        ],
        :macro_ruta => '#'
      },
      {
        :letrero => "Inicio", :submenu => [], :macro_ruta => 'root_url'
      }
    ]
  end
end
