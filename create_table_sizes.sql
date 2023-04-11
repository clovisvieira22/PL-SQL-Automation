--Created in 06/04/2023 by Clovis Vieira - distributed under GPU license
--Created for Oracle databases
CREATE TABLE sizes
       (    table_owner varchar2(20),
            table_name VARCHAR2(30),
            size_mb  NUMBER(10),
            date_size  DATE
        );

CREATE DIRECTORY csv_dir AS '/tmp';

