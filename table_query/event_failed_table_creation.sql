CREATE TABLE public.failed_events (
	id bigserial NOT NULL,
	topic varchar(255) NOT NULL,
	id_event uuid NOT NULL,
	payload varchar(255) NOT NULL,
	exception_type varchar(255) NULL,
	exception_message varchar(255) NULL,
	stacktrace varchar(2000) NOT NULL,
	consumer_group varchar(255) NOT NULL,
	retry_count int4 NOT NULL,
	created_at timestamp NOT NULL,
	status varchar(255) NOT NULL,
	kafka_offset int8 NOT NULL,
	kafka_partition int4 NOT NULL,
	failed_at timestamp NOT NULL,
	sent_at timestamp NOT NULL,
	CONSTRAINT failed_events_pk PRIMARY KEY (id)
);