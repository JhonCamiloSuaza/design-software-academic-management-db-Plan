-- Rollback de remediation-academic-960
ALTER TABLE academic_management.enrollment_ficha DROP CONSTRAINT IF EXISTS ck_enrollment_ficha_status;
