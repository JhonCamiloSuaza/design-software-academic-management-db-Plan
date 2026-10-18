ALTER TABLE academic_management.tech_network
    ADD CONSTRAINT uq_tech_network_tech_line_id_code UNIQUE (tech_line_id, code);

ALTER TABLE academic_management.tech_network
    ADD CONSTRAINT fk_tech_network_tech_line
    FOREIGN KEY (tech_line_id) REFERENCES academic_management.tech_line (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;