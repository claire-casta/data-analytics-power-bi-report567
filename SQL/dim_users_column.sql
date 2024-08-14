select * from information_schema.columns  --Select all the columns in the information schema

where table_schema = 'public'    -- just the Public tables as those are the relevant tables for the project
AND table_name = 'dim_users' -- Select the specified table