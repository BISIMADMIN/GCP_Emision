project_name: "Modelo_Comercial_Emision"

# Constantes para conexion, tablas, views y LookML dashboards
constant: conexion {
  value: "bigquery-operaciones"
}

constant: ruta_views {
  value: "/views/**/*.view.lkml"
}

constant: ruta_lookml_dashboards {
  value: "/lookml_dashboards/**/*.dashboard.lookml"
}
