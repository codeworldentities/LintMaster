-- Auto-generated: schema — database schema definition v2821
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2821 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    description TEXT,
    email VARCHAR(255),
    is_active BOOLEAN DEFAULT TRUE,
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2821_name
    ON schema_—_database_schema_definition_2821(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2821_created
    ON schema_—_database_schema_definition_2821(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2821 (name, metadata)
VALUES
    ('item_0', 'val_0_2821'),
    ('item_1', 'val_1_2821'),
    ('item_2', 'val_2_2821'),
    ('item_3', 'val_3_2821');

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2821_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2821
GROUP BY name
ORDER BY total DESC;
