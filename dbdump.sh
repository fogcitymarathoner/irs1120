#!/bin/bash
#GRANT ALL ON ALL TABLES IN SCHEMA public TO strona_user;
#GRANT ALL ON ALL SEQUENCES IN SCHEMA public TO strona_user;
#GRANT ALL ON ALL FUNCTIONS IN SCHEMA public TO strona_user;

/usr/local/pgsql910/bin/pg_dump rrg_1120_taxes > private/dbdump.sql

