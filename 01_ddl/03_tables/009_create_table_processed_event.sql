CREATE TABLE IF NOT EXISTS academic_management.processed_event (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    event_id UUID NOT NULL,
    event_type VARCHAR(120) NOT NULL,
    consumer_name VARCHAR(120) NOT NULL,
    processed_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    CONSTRAINT pk_academic_processed_event PRIMARY KEY (id),
    CONSTRAINT uq_academic_processed_event_consumer_event UNIQUE (consumer_name, event_id)
);

CREATE INDEX IF NOT EXISTS ix_academic_processed_event_processed_at
    ON academic_management.processed_event (processed_at);
