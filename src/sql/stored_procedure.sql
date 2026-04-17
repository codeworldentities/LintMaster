-- Auto-generated: stored procedure v7027
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_7027 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    description TEXT,
    counter INTEGER DEFAULT 0,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7027_name
    ON stored_procedure_7027(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7027_created
    ON stored_procedure_7027(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_7027 (name, email)
VALUES
    ('item_0', 'val_0_7027'),
    ('item_1', 'val_1_7027'),
    ('item_2', 'val_2_7027');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_7027_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_7027
GROUP BY name
ORDER BY total DESC;
