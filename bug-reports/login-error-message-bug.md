# Bug Report: Incorrect Error Message When Username is Empty

**Bug ID:** BUG-LOGIN-001  
**Module:** Login  
**Severity:** Medium  
**Priority:** Medium  
**Environment:** Chrome Browser / Windows 11  

---

## Description
When attempting to log in without entering a username, the system displays a generic error message that does not clearly indicate the missing username field.

---

## Preconditions
User is on the login page.

---

## Steps to Reproduce
1. Open the login page
2. Leave the **username** field empty
3. Enter any value in the **password** field
4. Click the **Login** button

---

## Expected Result
System should display a clear validation message indicating that the **username field is required**.

Example:  
`"Username is required"`

---

## Actual Result
System displays a generic error message that does not clearly indicate the missing username field.

---

## Test Data
Username: *(empty)*  
Password: test123  

---

## Status
Open
