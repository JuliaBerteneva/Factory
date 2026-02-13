# Factory Pattern in ABAP – Example Implementation

This repository contains a simple and clean example of the **Factory pattern** implemented in ABAP.

The goal of this example is to demonstrate how object creation logic can be centralized and decoupled from business logic using interfaces and a dedicated factory class.

The implementation is intentionally minimal and easy to understand, making it suitable for learning, mentoring, or interview preparation.

---

## 📌 Problem

In real ABAP systems, object creation often depends on:

- Customizing
- Document type
- System/client
- User role
- Feature switches

If this logic is duplicated across programs using `CASE` statements and direct instantiation, the system becomes:

- Hard to extend  
- Hard to maintain  
- Tightly coupled  
- Difficult to test  

The Factory pattern solves this by **centralizing instantiation logic in one place**.

---

## 🏗 Structure of the Example

The implementation consists of three main parts:

### 1️⃣ Interface – `zif_calc_logic`

Defines the common contract for all calculation implementations.

All calculation classes implement the `calculate` method.

The client depends only on this interface, not on concrete classes.

---

### 2️⃣ Concrete Implementations

- `zcl_tax_calculator`
- `zcl_discount_calculator`

Both classes:

- Implement `zif_calc_logic`
- Contain their own calculation logic
- Are independent from the client

---

### 3️⃣ Factory Class – `zcl_calc_factory`

Responsible for centralized object creation.

Key characteristics:

- `CREATE PRIVATE` → prevents direct instantiation
- Static method `get_calculator`
- Returns a reference to `zif_calc_logic`
- Raises a custom exception for invalid types
- Contains all decision logic

The client never creates concrete classes directly.  
It requests an implementation from the factory.

---

## 🚀 Usage Example

DATA(lo_calc) = zcl_calc_factory=>get_calculator( 'TAX' ).
DATA(lv_result) = lo_calc->calculate( 100 ).

## Check Blog post for more
