view: dim_poliza {
  sql_table_name: `comercial.DIM_POLIZA` ;;

  dimension: sk_poliza {
    primary_key: yes
    type: string
    sql: ${TABLE}.SK_POLIZA ;;
  }

  dimension: pk_poliza {
    type: string
    sql: ${TABLE}.PK_POLIZA ;;
  }

  dimension: rm {
    type: string
    sql: ${TABLE}.RM ;;
  }

  dimension: num_poliza {
    type: string
    sql: ${TABLE}.NUM_POLIZA ;;
  }

  dimension: num_endoso {
    type: string
    sql: ${TABLE}.NUM_ENDOSO ;;
  }

  dimension: endoso_norm {
    type: string
    sql: ${TABLE}.ENDOSO_NORM ;;
  }

  dimension: cve_moneda {
    type: string
    sql: ${TABLE}.CVE_MONEDA ;;
  }

  dimension: desc_moneda {
    type: string
    sql: ${TABLE}.DESC_MONEDA ;;
  }

  dimension: tipo_poliza {
    type: string
    sql: ${TABLE}.TIPO_POLIZA ;;
  }

  dimension: num_incisos {
    type: number
    sql: ${TABLE}.NUM_INCISOS ;;
  }

  dimension: subramo {
    type: string
    sql: ${TABLE}.SUBRAMO ;;
  }

  dimension: catalogo {
    type: string
    sql: ${TABLE}.CATALOGO ;;
  }

  dimension: nemonico {
    type: string
    sql: ${TABLE}.NEMONICO ;;
  }

  dimension: usuario_emision {
    type: string
    sql: ${TABLE}.USUARIO_EMISION ;;
  }

  dimension: cve_facturacion {
    type: string
    sql: ${TABLE}.CVE_FACTURACION ;;
  }

  dimension: cve_zona_atencion {
    type: string
    sql: ${TABLE}.CVE_ZONA_ATENCION ;;
  }

  dimension: imp_sum_aseg {
    type: number
    sql: ${TABLE}.IMP_SUM_ASEG ;;
  }

  dimension: tipo_movimiento {
    type: string
    sql: ${TABLE}.TIPO_MOVIMIENTO ;;
  }

  dimension_group: fch_vig_desde {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_VIG_DESDE ;;
  }

  dimension_group: fch_vig_hasta {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_VIG_HASTA ;;
  }

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
