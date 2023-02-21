Feature: CRUD

  Background:
    * url "https://reqres.in/api/"
    * header Accept = "application/json; charset=utf-8"

  Scenario: Test Sample Get API
    * url "https://reqres.in/api/users?page=2"
    * method GET
    * status 200
    * match header Content-Type == "application/json; charset=utf-8"
    * print responseTime
    * print response

    Scenario: Request with path and param
      Given path "/user"
      And param page = 2
      When method GET
      Then status 200
      And print response
