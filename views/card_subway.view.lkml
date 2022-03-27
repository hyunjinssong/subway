view: card_subway {
  sql_table_name: `grace_test.card_subway`
    ;;

  dimension: in {
    type: number
    sql: ${TABLE}.`In` ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}.Line ;;
  }

  dimension: load_date {
    type: number
    sql: ${TABLE}.Load_Date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: out {
    type: number
    sql: ${TABLE}.Out ;;
  }

  dimension: real_date {
    type: number
    sql: ${TABLE}.Real_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
