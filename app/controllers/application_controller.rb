class ApplicationController < ActionController::Base
  def options
    @options = [
      {:letrero => "Recibos", :submenu =>
        [
          {:opcion => "Emisión", :ruta => '#'}, 
          {:opcion => "Cobros", :ruta => '#'},
          {:opcion => "Recibos por cobrar", :ruta => '#'},
          {:opcion => "Cheques Devueltos", :ruta => '#'},
          {:opcion => "Revisión/Corrección", :ruta => '#'},
          {:opcion => "Elaboración Retenciones", :ruta => '#'}
        ]
      },
      {:letrero => "Pasivos", :submenu =>
        [
          {:opcion => "Reportes", :ruta => '#'}, 
          {:opcion => "Saldos", :ruta => '#'},
          {:opcion => "Saldos por Expediente", :ruta => '#'},
          {:opcion => "Contestar", :ruta => '#'},
          {:opcion => "Poliza del Mes", :ruta => '#'},
          {:opcion => "Revisiones Cuentas", :ruta => '#'},
          {:opcion => "Auxiliares de Mayor", :ruta => '#'},
          {:opcion => "Movimientos de ajuste", :ruta => '#'}
        ]
      },
      {:letrero => "Expedientes", :submenu =>
        [
          {:opcion => "Revisión", :ruta => '#'}, 
          {:opcion => "Traspasos", :ruta => '#'},
          {:opcion => "Cierres", :ruta => '#'},
          {:opcion => "Revisión de Saldos", :ruta => '#'},
          {:opcion => "Consulta Otorgantes", :ruta => '#'},
          {:opcion => "Honorarios Abogados", :ruta => '#'}
        ]
      },
      {:letrero => "Contabilidad", :submenu =>
        [
          {:opcion => "Catálogo de Cuentas", :ruta => '#'}, 
          {:opcion => "Pólizas de C. G.", :ruta => '#'},
          {:opcion => "Pólizas de Ingreso", :ruta => '#'},
          {:opcion => "Auxiliar de Cuentas", :ruta => '#'},
          {:opcion => "Saldos de Bancos", :ruta => '#'},
          {:opcion => "Anular Pólizas", :ruta => '#'},
          {:opcion => "Revisión de Bancos", :ruta => '#'},
          {:opcion => "Revisión Financiera", :ruta => '#'},
          {:opcion => "Reimprimir Pólizas", :ruta => '#'}
        ]
      },
      {:letrero => "Pagos", :submenu =>
        [
          {:opcion => "Vales", :ruta => '#'}, 
          {:opcion => "Autorización", :ruta => '#'},
          {:opcion => "Benef. Comunes", :ruta => '#'}
        ]
      },
      {:letrero => "Utilerías", :submenu =>
        [
          {:opcion => "Indices (Caja)", :ruta => '#'}, 
          {:opcion => "Respaldos", :ruta => '#'},
          {:opcion => "Cat. de Operaciones", :ruta => '#'},
          {:opcion => "Procesar Textos", :ruta => '#'},
          {:opcion => "Fecha y Hora", :ruta => '#'},
          {:opcion => "Consecutivos (Num)", :ruta => '#'},
          {:opcion => "Programa Auxiliar", :ruta => '#'},
          {:opcion => "Nómina", :ruta => '#'},
          {:opcion => "Reimpresión", :ruta => '#'}
        ]
      }
    ]
  end
end
