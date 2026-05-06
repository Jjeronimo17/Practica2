
---

# 🚗 Car Dealership Expert System – Prolog

## 📌 Project Overview

This project simulates a **car dealership system** built using **Prolog**, focused on filtering and recommending vehicles based on user-defined criteria.

It showcases how **logic programming** can be applied to model real-world decision systems, allowing queries over a knowledge base of vehicles.

---

## 🧠 What This Project Does

✔️ Stores a knowledge base of vehicles
✔️ Filters cars by:

* Brand
* Type (SUV, sedan, etc.)
* Year
* Budget

✔️ Allows logical queries to find matching vehicles
✔️ Simulates a recommendation system using rules

---

## ⚙️ How It Works

The system is implemented using **facts and rules in Prolog**:

* **Facts** define the available vehicles
* **Rules** define filtering logic
* **Queries** allow users to retrieve vehicles that match conditions

Example of how Prolog is used:

* Describe vehicles as structured facts
* Apply logical conditions to filter results
* Use backtracking to explore possible matches

---

## 🏗️ Project Structure

* **Knowledge Base**

  * Facts representing vehicles and their attributes

* **Rules Engine**

  * Logic for filtering and recommendations

* **Queries**

  * User inputs to retrieve results

---

## 🧪 Example Query

```prolog
% Find cars under a certain budget
car(Car, Brand, Type, Year, Price),
Price =< 50000.
```

Or more advanced:

```prolog
% Filter by brand and year
car(Car, toyota, Type, Year, Price),
Year >= 2020.
```

---

## 🚀 How to Run the Project

1. Open the project in:

   * **SWISH (SWI-Prolog online)**
   * Or **SWI-Prolog locally**

2. Load the `.pl` file

3. Run queries in the console, for example:

   ```prolog
   ?- car(Car, Brand, Type, Year, Price).
   ```

---

## 🎯 Learning Objectives

* Understand **logic programming paradigms**
* Work with **facts, rules, and queries**
* Apply **filtering logic using constraints**
* Use **Prolog backtracking** for search problems

---

## 🧩 Technologies Used

* **Language:** Prolog
* **Platform:** SWISH (SWI-Prolog)
* **Support Tools:** ChatGPT

---

## 👨‍💻 Authors

* **Jeronimo Jaramillo Agudelo**
* **Juan Esteban Grisales Restrepo**

---

## 🏫 Academic Context

* **Course:** Lenguajes y Paradigmas
* **Practice:** Practica 2
* **Topic:** Logic Programming with Prolog

---
