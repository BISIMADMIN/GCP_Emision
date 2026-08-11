view: dim_agente {
  sql_table_name: `comercial.DIM_AGENTE` ;;

  dimension: sk_agente {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_AGENTE ;;
  }

  dimension: pk_agente {
    type: string
    sql: ${TABLE}.PK_AGENTE ;;
  }

  dimension: desc_nombre_agte {
    type: string
    sql: ${TABLE}.DESC_NOMBRE_AGTE ;;
  }

  dimension: cve_agrupacion {
    type: string
    sql: ${TABLE}.CVE_AGRUPACION ;;
  }

  dimension: cve_gerente {
    type: string
    sql: ${TABLE}.CVE_GERENTE ;;
  }

  dimension: desc_nombre_gerente {
    type: string
    sql: ${TABLE}.DESC_NOMBRE_GERENTE ;;
  }

  dimension: cve_ofi_agente {
    type: string
    sql: ${TABLE}.CVE_OFI_AGENTE ;;
  }

  dimension: desc_ofi_agente {
    type: string
    sql: ${TABLE}.DESC_OFI_AGENTE ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
