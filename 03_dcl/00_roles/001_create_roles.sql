-- Roles de aplicacion (least-privilege) para el dominio academic
DO $$
BEGIN
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='academic_reader') THEN CREATE ROLE academic_reader NOLOGIN; END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='academic_writer') THEN CREATE ROLE academic_writer NOLOGIN; END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_roles WHERE rolname='academic_admin')  THEN CREATE ROLE academic_admin  NOLOGIN; END IF;
END $$;
