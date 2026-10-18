ALTER TABLE academic_management.training_program
    ADD CONSTRAINT uq_training_program_program_code UNIQUE (program_code);

ALTER TABLE academic_management.training_program
    ADD CONSTRAINT fk_training_program_knowledge_network
    FOREIGN KEY (knowledge_network_id) REFERENCES academic_management.knowledge_network (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE academic_management.training_program
    ADD CONSTRAINT ck_training_program_training_level
    CHECK (training_level IN ('AUXILIARY', 'OPERATOR', 'TECHNICIAN', 'TECHNOLOGIST'));

ALTER TABLE academic_management.training_program
    ADD CONSTRAINT ck_training_program_total_hours
    CHECK (total_hours >= 0);