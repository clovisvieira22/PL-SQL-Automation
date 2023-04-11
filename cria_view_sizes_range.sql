--Created on 06/04/2023 by Clovis Vieira - distributed under GPU license
create or replace view sizes_range
as
select initial_tbl.table_owner as table_owner, initial_tbl.table_name as table_name, initial_tbl.size_mb as "initial_&&initial_date", final_tbl.size_mb as "final_&&final_date", final_tbl.size_mb - initial_tbl.size_mb as growing
from
(
select table_owner, table_name, size_mb, date_size
from  sizes
where  trunc(date_size) = '&&initial_date'
) initial_tbl,
(
select table_owner, table_name, size_mb, date_size
from  sizes
where  trunc(date_size) = '&&final_date'
) final_tbl
where initial_tbl.table_name = final_tbl.table_name
/
