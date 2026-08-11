view: dim_asegurado {

  sql_table_name: `comercial.DIM_ASEGURADO` ;;

  dimension: sk_asegurado {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_ASEGURADO ;;
  }

  dimension: pk_asegurado {
    type: string
    sql: ${TABLE}.PK_ASEGURADO ;;
  }

  dimension: desc_nombre_aseg {
    type: string
    sql: ${TABLE}.DESC_NOMBRE_ASEG ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
