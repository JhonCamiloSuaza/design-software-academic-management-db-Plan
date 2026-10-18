-- Grants least-privilege dominio academic
GRANT USAGE ON SCHEMA academic_management TO academic_reader, academic_writer, academic_admin;
GRANT SELECT ON ALL TABLES IN SCHEMA academic_management TO academic_reader;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA academic_management TO academic_writer;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA academic_management TO academic_writer;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA academic_management TO academic_admin;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA academic_management TO academic_admin;
ALTER DEFAULT PRIVILEGES IN SCHEMA academic_management GRANT SELECT ON TABLES TO academic_reader;
ALTER DEFAULT PRIVILEGES IN SCHEMA academic_management GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO academic_writer;
ALTER DEFAULT PRIVILEGES IN SCHEMA academic_management GRANT ALL ON TABLES TO academic_admin;
