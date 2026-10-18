-- R3 remediación de congruencia (2026-08-06): CHECK faltante en enrollment_ficha.status.
-- Changeset NUEVO (remediation-academic-960); NO modifica changesets corridos.
-- Seguro: los datos existentes usan el default 'INDUCTION' (dentro del set).
ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT ck_enrollment_ficha_status
    CHECK (status IN ('INDUCTION','EXECUTION','PRODUCTIVE_STAGE','COMPLETED','CANCELLED'));
