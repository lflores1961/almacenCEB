class ApplicationController < ActionController::Base
  def options
    @options = [
      {:letrero => "Almacen", :submenu =>
        [
          {:opcion => "Entradas", :ruta => '#'}, 
          {:opcion => "Salidas", :ruta => '#'}
        ]
      },
      {:letrero => "Proveedores", :submenu =>
        [
          {:opcion => "Indice", :ruta => 'suppliers_path'}
        ]
      },
      {:letrero => "Productos", :submenu =>
        [
          {:opcion => "Index", :ruta => 'products_path'}, 
          {:opcion => "Autorización", :ruta => '#'}
        ]
      },
      {:letrero => "Usuarios", :submenu =>
        [
          {:opcion => "Indice", :ruta => 'users_path'}
        ]
      }
    ]
  end
end
