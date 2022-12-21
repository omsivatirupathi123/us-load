{{ config(
    pre_hook='create or replace procedure DEVELOPER_DB.TIRUPATHIRAO_SCHEMA.snowflake_procedure(TABLE_NAME varchar)
  returns varchar
  language javascript
  as     
  $$ 
    var my_sql_command = "select count(*) from "+ TABLE_NAME +";"
    
    var statement1 = snowflake.createStatement( {sqlText: my_sql_command} );
    var result_set1 = statement1.execute();
    result_set1.next()
    
    row_count = result_set1.getColumnValue(1);
    
       
  return row_count;
  $$'
) }}
 select * from DEVELOPER_DB.TIRUPATHIRAO_SCHEMA.emp

