# Login Test Cases

| Test Case ID | Scenario | Steps | Expected Result |
|---------------|----------|------|----------------|
| TC-LOGIN-001 | Login with valid credentials | Enter valid username and password then click Login | User is redirected to the Products page |
| TC-LOGIN-002 | Login with invalid password | Enter valid username and wrong password | Error message displayed |
| TC-LOGIN-003 | Login with empty username | Leave username empty and click login | Validation error appears |
| TC-LOGIN-004 | Login with empty password | Enter username but leave password empty | Validation error appears |
| TC-LOGIN-005 | Login with both fields empty | Leave username and password empty | Validation error appears |
| TC-LOGIN-006 | Login with locked user | Use locked user credentials | System shows locked user message |
