
SELECT plan(3);

SELECT has_function('pgr_turnpenaltygraph');

SELECT function_returns('pgr_turnpenaltygraph','setof record');

-- testing column names
SELECT bag_has(
    $$SELECT  proargnames from pg_proc where proname = 'pgr_turnpenaltygraph'$$,
    $$SELECT  '{"","seq","source","target","cost","edge"}'::TEXT[] $$
);
