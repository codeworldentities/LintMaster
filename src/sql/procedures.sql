-- Auto-generated: procedures — procedures v8884
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_8884 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    counter INTEGER DEFAULT 0,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8884_name
    ON procedures_—_procedures_8884(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_8884_created
    ON procedures_—_procedures_8884(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_8884 (name, score)
VALUES
    ('item_0', 'val_0_8884'),
    ('item_1', 'val_1_8884'),
    ('item_2', 'val_2_8884'),
    ('item_3', 'val_3_8884'),
    ('item_4', 'val_4_8884');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_8884_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_8884
GROUP BY name
ORDER BY total DESC;
