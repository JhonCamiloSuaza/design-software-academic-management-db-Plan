ALTER TABLE academic_management.knowledge_network
    ADD CONSTRAINT uq_knowledge_network_tech_network_id_code UNIQUE (tech_network_id, code);

ALTER TABLE academic_management.knowledge_network
    ADD CONSTRAINT fk_knowledge_network_tech_network
    FOREIGN KEY (tech_network_id) REFERENCES academic_management.tech_network (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;