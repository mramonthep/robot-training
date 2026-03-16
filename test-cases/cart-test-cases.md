# Product Page Test Cases

| Test Case ID | Scenario | Steps | Expected Result |
|--------------|----------|------|----------------|
| TC-PROD-001 | Verify product list is displayed after login | 1. Login with valid credentials | Products page is displayed showing the list of available products. |
| TC-PROD-002 | Verify product name is displayed | 1. Login 2. Navigate to products page | Each product displays its name correctly on the product card. |
| TC-PROD-003 | Verify product price is displayed | 1. Login 2. View product list | Each product displays its price below the product name. |
| TC-PROD-004 | Sort products by price low to high | 1. Login 2. Select "Price (low to high)" from sort dropdown | Products are reordered from the lowest price to the highest price. |
| TC-PROD-005 | Sort products by price high to low | 1. Login 2. Select "Price (high to low)" from sort dropdown | Products are reordered from the highest price to the lowest price. |
| TC-PROD-006 | Sort products by name A to Z | 1. Login 2. Select "Name (A to Z)" | Products are sorted alphabetically in ascending order. |
| TC-PROD-007 | Sort products by name Z to A | 1. Login 2. Select "Name (Z to A)" | Products are sorted alphabetically in descending order. |
| TC-PROD-008 | Verify product image is displayed | 1. Login 2. View product list | Each product displays an image associated with the product. |
