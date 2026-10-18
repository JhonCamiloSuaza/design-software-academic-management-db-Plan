CREATE TABLE IF NOT EXISTS academic_management.outbox (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    event_id UUID NOT NULL,
    event_type VARCHAR(120) NOT NULL,
    topic VARCHAR(120) NOT NULL,
    routing_key VARCHAR(120) NOT NULL,
    payload JSONB NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    next_attempt_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    retry_count INT NOT NULL DEFAULT 0,
    published_at TIMESTAMPTZ,
    dead_lettered_at TIMESTAMPTZ,
    last_error TEXT,
    CONSTRAINT pk_academic_outbox PRIMARY KEY (id),
    CONSTRAINT uq_academic_outbox_event_id UNIQUE (event_id),
    CONSTRAINT ck_academic_outbox_retry_count CHECK (retry_count >= 0)
);

CREATE INDEX IF NOT EXISTS ix_academic_outbox_pending
    ON academic_management.outbox (next_attempt_at, created_at)
    WHERE published_at IS NULL AND dead_lettered_at IS NULL;
