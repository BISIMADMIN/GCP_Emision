view: dim_promotor {
  sql_table_name: `comercial.DIM_PROMOTOR` ;;

  dimension: sk_promotor {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_PROMOTOR ;;
  }

  dimension: pk_promotor {
    type: string
    sql: ${TABLE}.PK_PROMOTOR ;;
  }

  dimension: desc_nombre_promotor {
    type: string
    sql: ${TABLE}.DESC_NOMBRE_PROMOTOR ;;
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
