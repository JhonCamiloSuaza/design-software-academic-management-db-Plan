ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT uq_enrollment_ficha_ficha_number UNIQUE (ficha_number);

ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT fk_enrollment_ficha_training_program
    FOREIGN KEY (program_id) REFERENCES academic_management.training_program (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT ck_enrollment_ficha_training_shift
    CHECK (training_shift IN ('DAY', 'NIGHT', 'MIXED'));

ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT ck_enrollment_ficha_training_modality
    CHECK (training_modality IN ('IN_PERSON', 'VIRTUAL', 'HYBRID'));

ALTER TABLE academic_management.enrollment_ficha
    ADD CONSTRAINT ck_enrollment_ficha_max_capacity
    CHECK (max_capacity > 0);