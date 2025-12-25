CREATE TABLE public.processed_events (
    id serial NOT NULL,
    topic varchar NOT NULL,
    "partition" integer NOT NULL,
    "offset" integer NOT NULL,
    key varchar NULL,
    id_event uuid NOT NULL,

    payload json NOT NULL,

    consumer_group varchar NOT NULL,
    processed_at timestamp NOT NULL,
    processing_time_ms integer NULL,

    status varchar NOT NULL,

    CONSTRAINT processed_events_pk PRIMARY KEY (id),
    CONSTRAINT processed_events_uk UNIQUE (topic, "partition", "offset")
);