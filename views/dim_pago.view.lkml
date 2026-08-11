view: dim_pago {
  sql_table_name: `comercial.DIM_PAGO` ;;

  dimension: sk_pago {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_PAGO ;;
  }

  dimension: pk_pago {
    type: string
    sql: ${TABLE}.PK_PAGO ;;
  }

  dimension: desc_forma_pago {
    type: string
    sql: ${TABLE}.DESC_FORMA_PAGO ;;
  }

  dimension: cve_forma_pago {
    type: string
    sql: ${TABLE}.CVE_FORMA_PAGO ;;
  }

  dimension: cve_forma_pago_cob {
    type: string
    sql: ${TABLE}.CVE_FORMA_PAGO_COB ;;
  }

  dimension: origen_pago {
    type: string
    sql: ${TABLE}.ORIGEN_PAGO ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
