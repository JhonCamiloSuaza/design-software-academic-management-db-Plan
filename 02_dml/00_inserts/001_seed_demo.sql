-- DEMO - cadena academica (linea -> programa -> ficha)
INSERT INTO academic_management.tech_line (id, name, code, created_by, updated_by) VALUES
  ('b0000000-0000-0000-0000-000000000001','Tecnologias de la Informacion','TL-TI','c0000000-0000-0000-0000-000000000001','c0000000-0000-0000-0000-000000000001') ON CONFLICT (id) DO NOTHING;
INSERT INTO academic_management.tech_network (id, tech_line_id, name, code, created_by, updated_by) VALUES
  ('b0000000-0000-0000-0000-000000000002','b0000000-0000-0000-0000-000000000001','Desarrollo de Software','TN-SW','c0000000-0000-0000-0000-000000000001','c0000000-0000-0000-0000-000000000001') ON CONFLICT (id) DO NOTHING;
INSERT INTO academic_management.knowledge_network (id, tech_network_id, name, code, created_by, updated_by) VALUES
  ('b0000000-0000-0000-0000-000000000003','b0000000-0000-0000-0000-000000000002','Programacion','KN-PROG','c0000000-0000-0000-0000-000000000001','c0000000-0000-0000-0000-000000000001') ON CONFLICT (id) DO NOTHING;
INSERT INTO academic_management.training_program (id, knowledge_network_id, program_code, name, training_level, total_hours, created_by, updated_by) VALUES
  ('b0000000-0000-0000-0000-000000000004','b0000000-0000-0000-0000-000000000003','ADSO-228106','Analisis y Desarrollo de Software','TECHNOLOGIST',2640,'c0000000-0000-0000-0000-000000000001','c0000000-0000-0000-0000-000000000001') ON CONFLICT (id) DO NOTHING;
INSERT INTO academic_management.enrollment_ficha (id, ficha_number, program_id, program_version, training_center_id, start_date, training_shift, training_modality, max_capacity, created_by, updated_by) VALUES
  ('b0000000-0000-0000-0000-000000000005','2874521','b0000000-0000-0000-0000-000000000004',1,'a0000000-0000-0000-0000-000000000005','2026-02-01','DAY','IN_PERSON',30,'c0000000-0000-0000-0000-000000000001','c0000000-0000-0000-0000-000000000001') ON CONFLICT (id) DO NOTHING;
