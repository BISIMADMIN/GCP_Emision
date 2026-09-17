view: dim_oficina_emision {
  sql_table_name: `comercial.DIM_OFICINA_EMISION` ;;

  # ==========================================
  # 1. LLAVES
  # ==========================================

  dimension: sk_oficina_emision {
    primary_key: yes
    type: string
    hidden: yes
    sql: TO_HEX(${TABLE}.SK_OFICINA_EMISION) ;;
  }

  # ==========================================
  # 2. DIMENSIONES REGULARES
  # ==========================================

  dimension: cve_oficina {
    type: string
    sql: ${TABLE}.CVE_OFICINA ;;
  }

  dimension: desc_oficina {
    type: string
    sql: ${TABLE}.DESC_OFICINA ;;
  }

  # ==========================================
  # 3. FECHAS
  # ==========================================

  dimension_group: fch_carga_dato {
    type: time
    timeframes: [date, week, month, year]
    sql: ${TABLE}.FCH_CARGA_DATO ;;
  }
}
