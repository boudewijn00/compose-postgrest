#!/bin/bash

psql -U ${POSTGRES_USER} <<-END
    create role ${POSTGRES_USER} noinherit login password ${POSTGRES_PASSWORD};
    
    create role ${DB_ANON_ROLE} nologin;
    grant ${DB_ANON_ROLE} to ${POSTGRES_USER};

    grant usage on schema ${DB_SCHEMA} to ${DB_ANON_ROLE};
    alter default privileges in schema ${DB_SCHEMA} grant select on tables to ${DB_ANON_ROLE};
    grant select on all sequences in schema ${DB_SCHEMA} to ${DB_ANON_ROLE};
    grant select on all tables in schema ${DB_SCHEMA} to ${DB_ANON_ROLE};
   
    create role todo_user nologin;
    grant todo_user to ${POSTGRES_USER};

    grant usage, select on schema ${DB_SCHEMA} to todo_user;
    alter default privileges in schema ${DB_SCHEMA} grant insert on tables to todo_user;
    alter default privileges grant usage, select on sequences to todo_user;
    grant usage, select on sequence houses_id_seq to todo_user;
    grant usage, select on all tables in schema ${DB_SCHEMA} to todo_user;
    grant usage, select on sequences to todo_user;
END