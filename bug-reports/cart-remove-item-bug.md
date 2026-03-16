# Bug Report: Cart Icon Count Not Updated After Removing Item

**Bug ID:** BUG-CART-001  
**Module:** Cart  
**Severity:** Medium  
**Priority:** High  
**Environment:** Chrome Browser / Windows 11  

---

## Description
When removing an item from the cart, the cart icon count is not updated immediately.

---

## Preconditions
User is logged in and has at least one item in the cart.

---

## Steps to Reproduce
1. Login to the system
2. Add a product to the cart
3. Click the cart icon
4. Remove the product from the cart

---

## Expected Result
Cart icon count should update immediately and display **0 items**.

---

## Actual Result
Cart icon count still shows **1 item** even after removing the product.

---

## Status
Open
