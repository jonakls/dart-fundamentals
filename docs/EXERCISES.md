# TALLER FUNDAMENTAL DE DART

Las aplicaciones multiplataforma centradas en el usuario, buscan siempre lograr un entorno
estable y confiable para los usuarios. En este sentido manejar adecuadamente los conceptos
básicos permiten dar mayor solides a dichos desarrollos, por tanto, el presente taller se centra
en el manejo de Dart, sus funciones más conocidas y los métodos más relevantes.
</br>
</br>
El presente taller tiene como objetivo afianzar conocimientos básicos y generar la necesidad
de búsqueda e indagación sobre insumos adicionales del lenguaje. Dado que la asignatura no
se centra propiamente en dart, si no en su aplicación en siguientes momentos nos centraremos
en el desarrollo propiamente dicho.

## Ejercicios a Desarrollar

### 1. Fibonacci Asincrono
Investiga y utiliza los generadores asíncronos de Dart para crear una función que
genere los primeros N números de la secuencia Fibonacci. Implementa la función
usando la sintaxis async* y devuelve un Stream<int>. Añade la funcionalidad para
que el usuario pueda pausar, reanudar y cancelar la generación de los números.

### 2. POO Con Mixins
Crea un sistema de clases que represente diferentes tipos de vehículos. Utiliza mixins
para añadir comportamientos como "Eléctrico", "Anfibio" y "Volador". Crea al
menos tres clases concretas que combinen estos comportamientos de diferentes
maneras. Explora cómo los mixins ofrecen una alternativa a la herencia múltiple.

### 3. La data de un Archivo de texto
Desarrolla un programa que procese un archivo grande de texto (puedes generarlo
automáticamente). Divide el procesamiento entre varios isolates para contar palabras,
calcular la frecuencia de letras y encontrar la palabra más larga de forma paralela.
Compara el tiempo de ejecución entre una versión secuencial y una paralela.

### 4. Arboles y Genericos
Implementa tu propia versión de un árbol binario de búsqueda utilizando generics.
Debe incluir métodos para insertar, eliminar, buscar y recorrer el árbol (inorden,
preorden, postorden). Añade un iterador personalizado que permita recorrer el árbol
usando un bucle for-in.

### 5. Manejo de Excepciones y Errores
Diseña un sistema de manejo de excepciones para una aplicación de comercio
electrónico. Crea jerarquías de excepciones personalizadas para diferentes tipos de
errores (validación de entrada, problemas de red, errores de autenticación).
Implementa un mecanismo que registre estos errores y proporcione mensajes útiles
al usuario según el tipo de error.

### 6. The Dart Mirror
Investiga la biblioteca dart:mirrors (o alternativas para Flutter) y crea un sistema que
pueda "inspeccionar" clases en tiempo de ejecución. Implementa un
serializador/deserializador JSON genérico que funcione con cualquier clase que siga
ciertas convenciones. Documenta las limitaciones de la reflexión en Dart y cómo
afecta al rendimiento.

### 7. Super Funciones
Implementa una biblioteca de utilidades que ofrezca funciones de orden superior
como map, filter, reduce, zip y compose. Escribe pruebas unitarias que demuestren
cómo estas funciones se pueden combinar para resolver problemas complejos de
procesamiento de datos sin utilizar bucles tradicionales.

### 8. Extensiones Útiles
Crea un conjunto de extensiones útiles para los tipos básicos de Dart (String, int, List,
Map). Por ejemplo, añade métodos a String para validar emails, convertir a
CamelCase o truncar con puntos suspensivos. Crea extensiones para List que
permitan operaciones como partición, agrupación o eliminación de duplicados.
Demuestra cómo estas extensiones pueden hacer que el código sea más legible. 

### 9. Patrones de Diseño
Implementa tres patrones de diseño diferentes (por ejemplo, Singleton, Factory,
Observer) en el contexto de una aplicación de gestión de tareas. Documenta cómo
cada patrón resuelve un problema específico y cuándo es apropiado utilizarlo en Dart.
Explora cómo las características específicas de Dart (como las funciones de primera
clase o los mixins) pueden simplificar ciertos patrones en comparación con otros
lenguajes. 

### 10. Google 2.0
Desarrolla una pequeña aplicación que demuestre el uso avanzado de Streams para
implementar programación reactiva. Crea una clase Observable<T> que encapsule
un StreamController y ofrezca métodos para transformar (map), filtrar, combinar y
agregar eventos. Implementa un ejemplo práctico como un buscador en tiempo real
que filtre resultados a medida que el usuario escribe. 