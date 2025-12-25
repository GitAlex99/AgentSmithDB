CREATE TABLE public.failed_events (
	id serial NOT NULL,
	topic varchar NOT NULL,
	"partition" varchar NOT NULL,
	"offset" integer NOT NULL,
	id_event uuid NOT NULL,
	payload json NOT NULL,
	exceptiion_type varchar NOT NULL,
	exception_message varchar NOT NULL,
	stacktrace varchar NOT NULL,
	conumer_group varchar NOT NULL,
	retry_count integer NOT NULL,
	created_at date NOT NULL,
	status varchar NOT NULL,
	CONSTRAINT failed_events_pk PRIMARY KEY (id)
);