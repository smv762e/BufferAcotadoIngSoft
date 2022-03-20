
Feature: Prueba Buffer
  Prueba de los diferentes métodos de la clase BufferAcotado

  Scenario: Añadir elementos
  	Given Tengo un BufferAcotado de capacidad 3
  	When Quiero introducir un elemento 1
  	When Quiero introducir un elemento 2
  	Then Quiero comprobar el tamaño 2
 
   Scenario: Eliminar elementos
  	Given Tengo un BufferAcotado de capacidad 3
  	When Quiero introducir un elemento 1
  	When Quiero introducir un elemento 2
  	When Quiero introducir un elemento 3
  	When Quiero eliminar un elemento
  	When Quiero eliminar un elemento
  	Then Quiero comprobar el tamaño 1
 
  Scenario: Buffer vacio
  	Given Tengo un BufferAcotado de capacidad 2
  	When Quiero introducir un elemento 1
  	When Quiero introducir un elemento 2
  	When Quiero eliminar un elemento
  	When Quiero eliminar un elemento
  	Then Quiero comprobar el tamaño 0
  	Then Quiero comprobar si está vacío "true"
  	
  Scenario: Buffer lleno
  	Given Tengo un BufferAcotado de capacidad 2
  	When Quiero introducir un elemento 1
  	When Quiero introducir un elemento 2
  	Then Quiero comprobar el tamaño 2
  	Then Quiero comprobar si está lleno "true"

  Scenario Outline: Buffer parámetros
  	Given Tengo un BufferAcotado de capacidad <cap>
  	When Quiero introducir un elemento <a>
  	When Quiero introducir un elemento <b>
  	When Quiero eliminar un elemento
  	Then Quiero comprobar el elemento eliminado <c>
  	
  	
  Examples:
  	| cap | a | b | c |
  	| 2   | 1 | 2 | 2 |
  	| 2   | 5 | 1 | 1 |
  	| 2   | 2 | 3 | 3 |

  	