Feature: POST method

  Scenario: Post Test 1
    * url "https://reqres.in/api/users"
    And request {"name": "Ensar", "job title": "Senior SDET"}
    When method POST
    Then status 201
    And print response

    Scenario: Test 2
      Given url "https://reqres.in/api/users"
      And request {"name": "Emre", "job title": "Team Lead", "age": 39}
      When method POST
      Then status 201
      And match response == {"createdAt":"#ignore", "job title":"#string", "name":"Emre", "id": "#string", "age":39}
