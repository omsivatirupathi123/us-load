def model(dbt,session):
    dbt.config(materialized="table")
    return session.sql("call DEVELOPER_DB.TIRUPATHIRAO_SCHEMA.first_procedure(301,'Booleandata')")