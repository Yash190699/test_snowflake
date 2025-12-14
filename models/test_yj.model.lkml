connection: "snowflakefromapi"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: test_yj_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_yj_default_datagroup

explore: customer_sample {}

explore: lineitem_sample {}

explore: orders_sample {}

explore: supplier_sample {}

