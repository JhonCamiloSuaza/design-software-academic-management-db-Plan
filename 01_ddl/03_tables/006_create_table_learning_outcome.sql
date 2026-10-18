CREATE TABLE IF NOT EXISTS academic_management.learning_outcome (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    competency_id UUID NOT NULL,
    code VARCHAR(20) NOT NULL,
    description TEXT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    row_version INT NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by UUID NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_by UUID NOT NULL,
    deleted_at TIMESTAMPTZ,
    deleted_by UUID,
    CONSTRAINT pk_learning_outcome PRIMARY KEY (id)
);