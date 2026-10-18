CREATE TABLE IF NOT EXISTS academic_management.training_program (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    knowledge_network_id UUID NOT NULL,
    program_code VARCHAR(20) NOT NULL,
    name VARCHAR(200) NOT NULL,
    training_level VARCHAR(20) NOT NULL,
    total_hours INT NOT NULL,
    version INT NOT NULL DEFAULT 1,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    row_version INT NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by UUID NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_by UUID NOT NULL,
    deleted_at TIMESTAMPTZ,
    deleted_by UUID,
    CONSTRAINT pk_training_program PRIMARY KEY (id)
);