-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	id serial4 NOT NULL,
	username varchar(255) NOT NULL,
	"password" varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	created_at timestamp NOT NULL DEFAULT now(),
	CONSTRAINT users_pkey PRIMARY KEY (id)
);