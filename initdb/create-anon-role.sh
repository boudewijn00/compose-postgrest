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
    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO todo_user;
    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO todo_user;
    GRANT DELETE, INSERT, SELECT, UPDATE ON houses IN SCHEMA public TO todo_user;
END