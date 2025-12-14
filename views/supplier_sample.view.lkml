view: supplier_sample {
  sql_table_name: "PUBLIC"."SUPPLIER_SAMPLE" ;;

  dimension: s_acctbal {
    type: number
    sql: ${TABLE}."S_ACCTBAL" ;;
  }
  dimension: s_address {
    type: string
    sql: ${TABLE}."S_ADDRESS" ;;
  }
  dimension: s_comment {
    type: string
    sql: ${TABLE}."S_COMMENT" ;;
  }
  dimension: s_name {
    type: string
    sql: ${TABLE}."S_NAME" ;;
  }
  dimension: s_nationkey {
    type: number
    sql: ${TABLE}."S_NATIONKEY" ;;
  }
  dimension: s_phone {
    type: string
    sql: ${TABLE}."S_PHONE" ;;
  }
  dimension: s_suppkey {
    type: number
    sql: ${TABLE}."S_SUPPKEY" ;;
  }
  measure: count {
    type: count
    drill_fields: [s_name]
  }
}
