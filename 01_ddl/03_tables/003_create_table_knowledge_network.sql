CREATE TABLE IF NOT EXISTS academic_management.knowledge_network(
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  tech_network_id UUID NOT NULL,
  name VARCHAR(150) NOT NULL,
  code VARCHAR(20) NOT NULL,
  is_active BOOLEAN NOT NULL DEFAULT TRUE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  created_by UUID NOT NULL,
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_by UUID NOT NULL,
  CONSTRAINT pk_knowledge_network PRIMARY KEY (id)
);