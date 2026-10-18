CREATE INDEX IF NOT EXISTS ix_enrollment_ficha_training_center_id_status 
    ON academic_management.enrollment_ficha (training_center_id, status);