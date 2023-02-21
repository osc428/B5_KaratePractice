Feature: Assertion

  Scenario: Matching Example
    * def name = "Steven King"
    * match name == "Steven King"
      # tek esittir calismaz
      # assert.equals gibi calisir
    * match name != "Adam Smith"

    Scenario: example 2
      * def employee =
      """
      {
      "first_name":"Ahmet",
      "salary":10000,
      "active":true
      }
      """
    * print employee
      * def emp_name = employee.first_name
      * match emp_name == "Ahmet"


      Scenario: fuzzy matching
        * def employee =
      """
      {
      "first_name":"Ali",
      "salary":50000,
      "age":30,
      "active":true
      }
      """

        * match employee.first_name == "#string"
        * match employee.age == "#number"
        * match employee.active == "#boolean"