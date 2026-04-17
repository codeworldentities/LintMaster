-- Auto-generated: table creation v4514
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_4514 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    metadata JSONB,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_4514_name
    ON table_creation_4514(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_4514_created
    ON table_creation_4514(created_at DESC);

-- Seed data
INSERT INTO table_creation_4514 (name, metadata)
VALUES
    ('item_0', 'val_0_4514'),
    ('item_1', 'val_1_4514'),
    ('item_2', 'val_2_4514'),
    ('item_3', 'val_3_4514'),
    ('item_4', 'val_4_4514'),
    ('item_5', 'val_5_4514'),
    ('item_6', 'val_6_4514'),
    ('item_7', 'val_7_4514'),

-- View
CREATE OR REPLACE VIEW v_table_creation_4514_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_4514
GROUP BY name
ORDER BY total DESC;
