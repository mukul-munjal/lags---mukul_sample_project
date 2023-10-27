view: entries {
  sql_table_name: public.entries ;;
  drill_fields: [entryid]

  dimension: entryid {
    primary_key: yes
    type: number
    sql: ${TABLE}."entryid" ;;
  }
  dimension: content {
    type: string
    sql: ${TABLE}."content" ;;
  }
  dimension: guestname {
    type: string
    sql: ${TABLE}."guestname" ;;
  }
  measure: count {
    type: count
    drill_fields: [entryid, guestname]
  }
}
