--Created in 06/04/2023 by Clovis Vieira - distributed under GPU license
--Before create you must created directory like create directory CSV_DIR as 'path'
create or replace procedure write_csv is
  file_handle UTL_FILE.file_type;
begin
  file_handle := utl_file.fopen('CSV_DIR', 'sizes.csv', 'w', 32767);
  for line in (
    select table_owner, table_name, size_mb , date_size from sizes
  ) loop
    utl_file.put_line(file_handle,
      line.table_owner || ',' ||  line.table_name || ',' || line.size_mb || ',' || line.date_size
    );
  end loop;
  utl_file.fclose(file_handle);
end write_csv;
/
