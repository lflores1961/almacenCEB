class ApplicationController < ActionController::Base
  include SessionsHelper
  
  def options

      @options = [
        {:letrero => "Almacen", :submenu =>
          [
            {:opcion => "Registrar Entradas", :ruta => 'list_inputs_path', :nivel => 1},
            {:opcion => "Indice de Registros de Entradas", :ruta => 'inputs_path', :nivel => 1},
            {:opcion => "Inventario", :ruta => '#', :nivel => 0}, 
            {:opcion => "Registrar Salidas", :ruta => 'list_outputs_path', :nivel => 0},
            {:opcion => "Indice de Registros de Salidas", :ruta => 'outputs_path', :nivel => 1}
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
            {:opcion => "Capítulos", :ruta => 'capitulos_path', :nivel => 1},
            {:opcion => "Conceptos", :ruta => 'conceptos_path', :nivel => 1},
            {:opcion => "Partidas", :ruta => 'partidas_path', :nivel => 1}
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
