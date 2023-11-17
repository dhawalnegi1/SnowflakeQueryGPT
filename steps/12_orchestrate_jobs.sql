USE ROLE TEAM2_ROLE;
USE WAREHOUSE TEAM2_DW;
USE DATABASE TEAM2_DB;
USE SCHEMA ANALYTICS;

CREATE OR REPLACE TASK SPONSOR_APPUSAGE_CORR_UPDATE_TASK
WAREHOUSE = TEAM2_DW
WHEN
  SYSTEM$STREAM_HAS_DATA('PANELIST_APP_USAGE_STREAM') OR SYSTEM$STREAM_HAS_DATA('SPONSOR_EXPOSURE_STREAM') 
AS
CALL TEAM2_DB.ANALYTICS.SPONSOR_APPUSAGE_CORR_UPDATE_SP();