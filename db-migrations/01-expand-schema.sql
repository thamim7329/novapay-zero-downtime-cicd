-- Phase 1: Expand Pattern (Adding new columns without breaking existing app version)
ALTER TABLE accounts ADD COLUMN IF NOT EXISTS kyc_status VARCHAR(50) DEFAULT 'PENDING';
ALTER TABLE accounts ADD COLUMN IF NOT EXISTS pci_compliant_flag BOOLEAN DEFAULT FALSE;