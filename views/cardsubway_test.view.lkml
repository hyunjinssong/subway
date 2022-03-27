view: cardsubway_test {
  sql_table_name: `grace_test.cardsubway_test`
    ;;

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Date ;;
  }

  dimension: in {
    type: number
    sql: ${TABLE}.`In` ;;
  }

  dimension: line {
    type: string
    sql: ${TABLE}.Line ;;
  }

  dimension: out {
    type: number
    sql: ${TABLE}.Out ;;
  }

  dimension: plus {
    type: number
    sql: ${TABLE}.Plus ;;
  }

  dimension: station {
    type: string
    sql: ${TABLE}.Station ;;
  }

  dimension: sub {
    type: number
    sql: ${TABLE}.Sub ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.Week ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_in {
    type: number
    sql: sum(${TABLE}.`In`) ;;
  }


}
