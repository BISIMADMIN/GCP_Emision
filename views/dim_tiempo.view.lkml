view: dim_tiempo {
  sql_table_name: `comercial.DIM_TIEMPO` ;;

  dimension: sk_fecha {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_FECHA ;;
  }

  dimension: num_anio {
    type: number
    sql: ${TABLE}.NUM_ANIO ;;
  }

  dimension: num_semestre {
    type: number
    sql: ${TABLE}.NUM_SEMESTRE ;;
  }

  dimension: desc_semestre {
    type: string
    sql: ${TABLE}.DESC_SEMESTRE ;;
  }

  dimension: num_trimestre {
    type: number
    sql: ${TABLE}.NUM_TRIMESTRE ;;
  }

  dimension: desc_trimestre {
    type: string
    sql: ${TABLE}.DESC_TRIMESTRE ;;
  }

  dimension: num_mes {
    type: number
    sql: ${TABLE}.NUM_MES ;;
  }

  dimension: desc_mes {
    type: string
    sql: ${TABLE}.DESC_MES ;;
  }

  dimension: desc_mes_largo {
    type: string
    sql: ${TABLE}.DESC_MES_LARGO ;;
  }

  dimension: num_dia {
    type: number
    sql: ${TABLE}.NUM_DIA ;;
  }

  dimension: desc_dia {
    type: string
    sql: ${TABLE}.DESC_DIA ;;
  }

  dimension_group: fch_fecha {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_FECHA ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
