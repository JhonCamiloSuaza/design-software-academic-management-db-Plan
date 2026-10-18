CREATE TABLE IF NOT EXISTS academic_management.competency (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    program_id UUID NOT NULL,
    name VARCHAR(200) NOT NULL,
    sena_code VARCHAR(20) NOT NULL,
    hours INT NOT NULL,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    row_version INT NOT NULL DEFAULT 0,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_by UUID NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_by UUID NOT NULL,
    deleted_at TIMESTAMPTZ,
    deleted_by UUID,
    CONSTRAINT pk_competency PRIMARY KEY (id)
);