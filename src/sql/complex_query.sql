-- Auto-generated: complex query v1692
-- Created for project optimization

CREATE TABLE IF NOT EXISTS complex_query_1692 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_complex_query_1692_name
    ON complex_query_1692(name);

CREATE INDEX IF NOT EXISTS idx_complex_query_1692_created
    ON complex_query_1692(created_at DESC);

-- Seed data
INSERT INTO complex_query_1692 (name, email)
VALUES
    ('item_0', 'val_0_1692'),
    ('item_1', 'val_1_1692'),
    ('item_2', 'val_2_1692'),
    ('item_3', 'val_3_1692'),
    ('item_4', 'val_4_1692'),
    ('item_5', 'val_5_1692'),
    ('item_6', 'val_6_1692');

-- View
CREATE OR REPLACE VIEW v_complex_query_1692_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM complex_query_1692
GROUP BY name
ORDER BY total DESC;
