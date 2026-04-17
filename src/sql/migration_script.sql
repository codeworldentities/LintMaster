-- Auto-generated: migration script v7737
-- Created for project optimization

CREATE TABLE IF NOT EXISTS migration_script_7737 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'active',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_migration_script_7737_name
    ON migration_script_7737(name);

CREATE INDEX IF NOT EXISTS idx_migration_script_7737_created
    ON migration_script_7737(created_at DESC);

-- Seed data
INSERT INTO migration_script_7737 (name, email)
VALUES
    ('item_0', 'val_0_7737'),
    ('item_1', 'val_1_7737'),
    ('item_2', 'val_2_7737'),
    ('item_3', 'val_3_7737'),
    ('item_4', 'val_4_7737'),
    ('item_5', 'val_5_7737'),
    ('item_6', 'val_6_7737'),
    ('item_7', 'val_7_7737'),

-- View
CREATE OR REPLACE VIEW v_migration_script_7737_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM migration_script_7737
GROUP BY name
ORDER BY total DESC;
