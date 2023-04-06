--Created on 06/04/2023 by Clovis Vieira - distributed under GPU license
create or replace view sizes_range
as
select inicial.tabela, inicial."inicial_&&data_inicio", final."final_&&data_final", final."final_&&data_final"- inicial."inicial_&&data_inicio" as aumento
from
(
select tabela, tamanho as "inicial_&&data_inicio", data
from  sizes
where  trunc(data) = '&&data_inicio'
) inicial,
(
select tabela, tamanho as "final_&&data_final", data
from  sizes
where  trunc(data) = '&&data_final'
) final
where inicial.tabela = final.tabela
/
