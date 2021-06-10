class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def options

      @options = [
        {:letrero => "Almacen", :submenu =>
          [
            {:opcion => "Ingresar artículos", :ruta => 'inputs_path', :nivel => 1},
            {:opcion => "Inventario", :ruta => '#', :nivel => 0}, 
            {:opcion => "Salidas", :ruta => '#', :nivel => 0}
          ],
          :macro_ruta => '#'
        },
        {:letrero => "Proveedores", :submenu =>
          [
            {:opcion => "Indice", :ruta => 'suppliers_path', :nivel => 1}
          ],
          :macro_ruta => '#'
        },
        {:letrero => "Productos", :submenu =>
          [
            {:opcion => "Index", :ruta => 'products_path', :nivel => 1}, 
            {:opcion => "Capítulos", :ruta => 'capitulos_path', :nivel => 1}
          ],
          :macro_ruta => '#'
        },
        {:letrero => "Usuarios", :submenu =>
          [
            {:opcion => "Indice", :ruta => 'users_url', :nivel => 1}
          ],
          :macro_ruta => '#'
        },
        {
          :letrero => "Inicio", :submenu => [], :macro_ruta => 'root_url'
        }
      ]

  end
end
