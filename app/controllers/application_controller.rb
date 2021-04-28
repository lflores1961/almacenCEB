class ApplicationController < ActionController::Base
  def options
    @options = [
      {:letrero => "Almacen", :submenu =>
        [
          {:opcion => "Entradas", :ruta => '#'}, 
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
