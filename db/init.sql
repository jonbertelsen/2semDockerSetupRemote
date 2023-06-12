CREATE
    USER dev WITH PASSWORD 'ax2';
GRANT pg_read_all_data TO dev;
GRANT pg_write_all_data TO dev;

CREATE
    DATABASE startcode;
CREATE
    DATABASE startcode_test;

\c startcode
CREATE TABLE IF NOT EXISTS public."user"
(
    user_name character varying(45) COLLATE pg_catalog."default" NOT NULL,
    password character varying(45) COLLATE pg_catalog."default",
    role character varying(10) COLLATE pg_catalog."default" DEFAULT USER,
    CONSTRAINT user_pkey PRIMARY KEY (user_name)
);

INSERT INTO public."user" VALUES ('user', '1234', 'user');
INSERT INTO public."user" VALUES ('admin', '1234', 'admin');

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."user"
    OWNER to dev;
