exec FilterPrice 9.99

exec FilterPrice 337.22

SELECT query_sql_text,
       q.query_id
FROM   sys.query_store_query_text qt
       INNER JOIN sys.query_store_query q
               ON qt.query_text_id = q.query_text_id
WHERE  query_sql_text LIKE N'%bigproduct%'


EXEC Sp_query_store_set_hints
  @query_id=1,
  @value = N'OPTION(RECOMPILE)';

SELECT query_hint_id,
       query_id,
       query_hint_text,
       last_query_hint_failure_reason,
       last_query_hint_failure_reason_desc,
       query_hint_failure_count,
       source,
       source_desc
FROM   sys.query_store_query_hints;