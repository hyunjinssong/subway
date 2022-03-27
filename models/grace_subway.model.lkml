connection: "hyunjin_song_2"

# include all the views
include: "/views/**/*.view"

datagroup: grace_subway_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: grace_subway_default_datagroup

explore: card_subway {}

explore: cardsubway_test {}

explore: rawdata_test {}
