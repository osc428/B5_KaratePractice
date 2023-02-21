
Feature: start feature
  @wip
  Scenario: How to print
   Given print "Hello Karate"
    * print "Last print"

  Scenario: keep going printing
    Given print 'some words'
    * print "My name is tahsin"
    * print "My name","Karate kid"
    * print "My name is"+"Adam Smith"

    Scenario: Some Json object
      * def student =
      """
      {
      "FirstName" : "Mike",
      "LastName" : "Smith",
      "Salary": 5000
      }
      """
      * print student
      * print student.FirstName
      * print student.LastName
      * print student.Salary