SELECT now() (); -- 2022-04-08 20:50:05.340 -0300

SELECT now() ()::DATE; -- 2022-04-08

SELECT to_char(now(), 'DD/MM/YYYY'); -- 08/04/2022

SELECT to_char(now(), 'DD, MONTH, YYYY'); -- 08, APRIL    , 2022

SELECT TO_CHAR(128.3::REAL, '999D99'); --  128.30