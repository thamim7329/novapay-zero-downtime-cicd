package novapay.compliance

default allow = false

# Rule: Ensure all financial transactions adhere to encryption and segregation of duties
allow {
    input.encryption_enabled == true
    input.pci_dss_compliant == true
    input.segregation_of_duties == true
}