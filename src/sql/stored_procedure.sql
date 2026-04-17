-- Auto-generated: stored procedure v2969
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_2969 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    priority SMALLINT DEFAULT 0,
    score DECIMAL(10,2),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_2969_name
    ON stored_procedure_2969(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_2969_created
    ON stored_procedure_2969(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_2969 (name, metadata)
VALUES
    ('item_0', 'val_0_2969'),
    ('item_1', 'val_1_2969'),
    ('item_2', 'val_2_2969'),
    ('item_3', 'val_3_2969'),
    ('item_4', 'val_4_2969'),
    ('item_5', 'val_5_2969'),
    ('item_6', 'val_6_2969'),
    ('item_7', 'val_7_2969'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_2969_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_2969
GROUP BY name
ORDER BY total DESC;
