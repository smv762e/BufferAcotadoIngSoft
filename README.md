# BufferAcotadoIngSoft

PruebaBuffer.feature: Contiene pruebas de los diferentes métodos de la clase BufferAcotado.\

- Scenario Añadir elementos
Estructura:\
Given BufferAcotado de capacidad {int}\
When Introducir elemento {int}\
...\
Then Tamaño igual a {int}

- Scenario Eliminar elementos
Estructura:\
Given BufferAcotado de capacidad {int}\
When Introducir elemento {int}\
...\
When Eliminar elemento
...\
Then Tamaño igual a {int}

- Scenario Buffer vacío
Estructura:\
Given BufferAcotado de capacidad {int}\
When Introducir elemento {int}\
...\
When Eliminar elemento
...\
Then Tamaño igual a {int}
Then Vacio es {string} // Boolean no disponible, se hace una coversión Boolean -> String con to.String()

- Scenario Buffer lleno
Estructura:\
Given BufferAcotado de capacidad {int}\
When Introducir elemento {int}\
...\
Then Tamaño igual a {int}
Then Lleno es {string} // Boolean no disponible, se hace una coversión Boolean -> String con to.String()

- Scenario Buffer parámetros
Estructura:\
Given BufferAcotado de capacidad [cap]\
When Introducir elemento [a]\
When Introducir elemento [b]\
...\
When Eliminar elemento
...\
Then Elemento eliminado es [del]
