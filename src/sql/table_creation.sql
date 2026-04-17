-- Auto-generated: table creation v5393
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_5393 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_5393_name
    ON table_creation_5393(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_5393_created
    ON table_creation_5393(created_at DESC);

-- Seed data
INSERT INTO table_creation_5393 (name, is_active)
VALUES
    ('item_0', 'val_0_5393'),
    ('item_1', 'val_1_5393'),
    ('item_2', 'val_2_5393'),
    ('item_3', 'val_3_5393'),
    ('item_4', 'val_4_5393'),
    ('item_5', 'val_5_5393'),
    ('item_6', 'val_6_5393'),
    ('item_7', 'val_7_5393'),

-- View
CREATE OR REPLACE VIEW v_table_creation_5393_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_5393
GROUP BY name
ORDER BY total DESC;
