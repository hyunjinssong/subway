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

  measure: total_in_passengers {
    label: "총 승차인원 수"
    type: number
    sql: sum(${TABLE}.`In`) ;;
  }

  measure: total_out_passengers {
    label: "총 하차인원 수"
    type: number
    sql: sum(${TABLE}.Out) ;;
  }

  measure: total_passengers {
    label: "유동인원수"
    type: sum
    sql: ${TABLE}.Out + ${TABLE}.`In` ;;
  }

  measure: totalpassengers {
    label: "순수송인원 수"
    type: sum
    sql: ${TABLE}.`In` - ${TABLE}.Out ;;
  }



}
