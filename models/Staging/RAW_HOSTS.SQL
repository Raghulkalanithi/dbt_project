{{
    config(materialized='Table')
}}
select 
id as host_id,
name as host_name,
case when is_superhost = 't' then true 
else false 
end as is_superhost, 
created_at as host_since,
updated_at as host_updated
from airbnb.raw.raw_hosts