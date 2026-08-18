connection: "@{conexion}"

include: "@{ruta_views}"
include: "@{ruta_lookml_dashboards}"

datagroup: Modelo_Emision_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: Modelo_Emision_default_datagroup

explore: tbl_fact_emision {
  label: "Análisis de Emisión"
  description: "Exploración central para analizar las emisiones y primas totales."

  # 1. Join con Dimensión Agente
  join: dim_agente {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_agente} = ${dim_agente.sk_agente} ;;
  }

  # 2. Join con Dimensión Asegurado
  join: dim_asegurado {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_asegurado} = ${dim_asegurado.sk_asegurado} ;;
  }

  # 3. Join con Dimensión Oficina Emisión
  join: dim_oficina_emision {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_oficina_emision} = ${dim_oficina_emision.sk_oficina_emision} ;;
  }

  # 4. Join con Dimensión Pago
  join: dim_pago {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_pago} = ${dim_pago.sk_pago} ;;
  }

  # 5. Join con Dimensión Póliza
  join: dim_poliza {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_poliza} = ${dim_poliza.sk_poliza} ;;
  }

  # 6. Join con Dimensión Promotor
  join: dim_promotor {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_promotor} = ${dim_promotor.sk_promotor} ;;
  }

  # 7. Join con Dimensión Tiempo
  join: dim_tiempo {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_fecha_emision} = ${dim_tiempo.sk_fecha} ;;
  }

  # 8. Join con Dimensión Vehículo
  join: dim_vehiculo {
    type: left_outer
    relationship: many_to_one
    sql_on: ${tbl_fact_emision.sk_vehiculo} = ${dim_vehiculo.sk_vehiculo} ;;
  }
}
