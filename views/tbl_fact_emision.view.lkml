view: tbl_fact_emision {
  sql_table_name: `comercial.TBL_FACT_EMISION` ;;

  # --- DIMENSIONES REGULARES ---

  dimension: pk_poliza {
    type: string
    sql: ${TABLE}.PK_POLIZA ;;
  }

  dimension: tipo_cambio_emision {
    type: number
    sql: ${TABLE}.TIPO_CAMBIO_EMISION ;;
  }

  dimension: cod_anul {
    type: string
    sql: ${TABLE}.COD_ANUL ;;
  }

  dimension: renueva_a {
    type: string
    sql: ${TABLE}.RENUEVA_A ;;
  }

  dimension: renovada_por {
    type: string
    sql: ${TABLE}.RENOVADA_POR ;;
  }

  dimension: bit_prima_emitida {
    type: number
    sql: ${TABLE}.BIT_PRIMA_EMITIDA ;;
  }

  dimension: bit_prima_pagada {
    type: number
    sql: ${TABLE}.BIT_PRIMA_PAGADA ;;
  }

  dimension: bit_cancelada {
    type: number
    sql: ${TABLE}.BIT_CANCELADA ;;
  }

  # --- DIMENSIONES FINANCIERAS (Con formato de moneda) ---

  dimension: imp_prima_neta {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_NETA ;;
  }

  dimension: imp_prima_total {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_TOTAL ;;
  }

  dimension: imp_prima_emitida_mn {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_EMITIDA_MN ;;
  }

  dimension: imp_prima_emitida_me {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_EMITIDA_ME ;;
  }

  dimension: imp_prima_total_mn {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_TOTAL_MN ;;
  }

  dimension: imp_prima_total_me {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_PRIMA_TOTAL_ME ;;
  }

  dimension: imp_derecho_poliza {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_DERECHO_POLIZA ;;
  }

  dimension: imp_derecho_poliza_mn {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_DERECHO_POLIZA_MN ;;
  }

  dimension: imp_derecho_poliza_me {
    type: number
    value_format_name: usd
    sql: ${TABLE}.IMP_DERECHO_POLIZA_ME ;;
  }

  # --- FECHAS ---

  dimension_group: fch_particion {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.FCH_PARTICION ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }

  # --- LLAVES SUBROGADAS (Ocultas para el usuario final) ---

  dimension: sk_fecha_emision {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_FECHA_EMISION ;;
  }

  dimension: sk_asegurado {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_ASEGURADO ;;
  }

  dimension: sk_oficina_emision {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_OFICINA_EMISION ;;
  }

  dimension: sk_agente {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_AGENTE ;;
  }

  dimension: sk_promotor {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_PROMOTOR ;;
  }

  dimension: sk_poliza {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_POLIZA ;;
  }

  dimension: sk_pago {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_PAGO ;;
  }

  dimension: sk_vehiculo {
    type: string
    hidden: yes
    sql: ${TABLE}.SK_VEHICULO ;;
  }

  # --- MÉTRICAS (Measures) ---

  measure: count {
    type: count
    label: "Total de Registros"
  }

  measure: total_prima_emitida_mn {
    type: sum
    value_format_name: usd
    label: "Suma Prima Emitida (MN)"
    sql: ${imp_prima_emitida_mn} ;;
  }

  measure: total_prima_total_mn {
    type: sum
    value_format_name: usd
    label: "Suma Prima Total (MN)"
    sql: ${imp_prima_total_mn} ;;
  }
}
