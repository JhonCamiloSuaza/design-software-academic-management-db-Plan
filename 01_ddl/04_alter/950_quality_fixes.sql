-- Quality fixes (v2.0.0): id DEFAULT gen_random_uuid() e indices de FK faltantes
CREATE INDEX IF NOT EXISTS ix_enrollment_ficha_program_id ON academic_management.enrollment_ficha (program_id);
