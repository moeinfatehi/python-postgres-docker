CREATE USER postgres;

-- Database: postgres

-- DROP DATABASE IF EXISTS postgres;

CREATE DATABASE postgres
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT ALL PRIVILEGES ON DATABASE postgres TO postgres;
COMMENT ON DATABASE postgres
    IS 'default administrative connection database';


-- SCHEMA: public

-- DROP SCHEMA IF EXISTS public ;

CREATE SCHEMA IF NOT EXISTS public
    AUTHORIZATION postgres;

COMMENT ON SCHEMA public
    IS 'standard public schema';

GRANT ALL ON SCHEMA public TO PUBLIC;

GRANT ALL ON SCHEMA public TO postgres;


-- Table: public.public_table

-- DROP TABLE IF EXISTS public.public_table;

CREATE TABLE IF NOT EXISTS public.public_table
(
    id character varying(10) COLLATE pg_catalog."default" NOT NULL,
    "time" numeric NOT NULL,
    CONSTRAINT public_table_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.public_table
    OWNER to postgres;