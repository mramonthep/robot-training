# Login Test Cases

| Test Case ID | Scenario | Steps | Expected Result |
|--------------|----------|------|----------------|
| TC-LOGIN-001 | Login with valid credentials | Enter valid username and password then click Login | User is successfully logged in and redirected to the Products page |
| TC-LOGIN-002 | Login with invalid password | Enter valid username and wrong password then click Login | System displays error message "Username and password do not match any user in this service" and user remains on login page |
| TC-LOGIN-003 | Login with empty username | Leave username empty and click Login | System displays error message "Username is required" |
| TC-LOGIN-004 | Login with empty password | Enter username but leave password empty then click Login | System displays error message "Password is required" |
| TC-LOGIN-005 | Login with both fields empty | Leave username and password empty then click Login | System displays error message "Username is required" |
| TC-LOGIN-006 | Login with locked user | Enter locked user credentials then click Login | System displays error message indicating the user account is locked and login is not allowed |
