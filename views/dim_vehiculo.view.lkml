view: dim_vehiculo {
  sql_table_name: `comercial.DIM_VEHICULO` ;;

  dimension: sk_vehiculo {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_VEHICULO ;;
  }

  dimension: pk_vehiculo {
    type: string
    sql: ${TABLE}.PK_VEHICULO ;;
  }

  dimension: pk_poliza {
    type: string
    sql: ${TABLE}.PK_POLIZA ;;
  }

  dimension: inciso {
    type: string
    sql: ${TABLE}.INCISO ;;
  }

  dimension: di_marca_corta {
    type: string
    sql: ${TABLE}.DI_MARCA_CORTA ;;
  }

  dimension: num_serie {
    type: string
    sql: ${TABLE}.NUM_SERIE ;;
  }

  dimension: nouso {
    type: string
    sql: ${TABLE}.NOUSO ;;
  }

  dimension: dest {
    type: string
    sql: ${TABLE}.DEST ;;
  }

  dimension: subramo {
    type: string
    sql: ${TABLE}.SUBRAMO ;;
  }

  dimension: modelo {
    type: string
    sql: ${TABLE}.MODELO ;;
  }

  dimension: cobertura {
    type: string
    sql: ${TABLE}.COBERTURA ;;
  }

  dimension: cve_cobertura {
    type: string
    sql: ${TABLE}.CVE_COBERTURA ;;
  }

  dimension: clave_amis {
    type: string
    sql: ${TABLE}.CLAVE_AMIS ;;
  }

  dimension: destipo {
    type: string
    sql: ${TABLE}.DESTIPO ;;
  }

  dimension: categoria {
    type: string
    sql: ${TABLE}.CATEGORIA ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
