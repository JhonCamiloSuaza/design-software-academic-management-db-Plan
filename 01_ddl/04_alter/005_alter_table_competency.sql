ALTER TABLE academic_management.competency
    ADD CONSTRAINT uq_competency_program_id_sena_code UNIQUE (program_id, sena_code);

ALTER TABLE academic_management.competency
    ADD CONSTRAINT fk_competency_training_program
    FOREIGN KEY (program_id) REFERENCES academic_management.training_program (id)
    ON DELETE CASCADE ON UPDATE RESTRICT;

ALTER TABLE academic_management.competency
    ADD CONSTRAINT ck_competency_hours
    CHECK (hours >= 0);