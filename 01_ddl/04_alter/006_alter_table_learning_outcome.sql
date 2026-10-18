ALTER TABLE academic_management.learning_outcome
    ADD CONSTRAINT uq_learning_outcome_competency_id_code UNIQUE (competency_id, code);

ALTER TABLE academic_management.learning_outcome
    ADD CONSTRAINT fk_learning_outcome_competency
    FOREIGN KEY (competency_id) REFERENCES academic_management.competency (id)
    ON DELETE CASCADE ON UPDATE RESTRICT;