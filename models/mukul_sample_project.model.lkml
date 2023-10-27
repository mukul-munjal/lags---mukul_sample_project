connection: "mukul-publicup-postgresql"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: mukul_sample_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: mukul_sample_project_default_datagroup

explore: entries {}

