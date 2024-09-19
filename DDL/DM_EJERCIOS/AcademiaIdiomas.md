# Objetivo: Crear bases de datos definiendo su estructura y las características de sus elementos según el modelo relacional. 

Se desea crea la base de datos idiomas con la siguiente información acerca de los alumnos de una academia de idiomas donde se imparten diversos cursos, con las siguientes especificaciones:  

Para los alumnos, se almacenará el nombre, apellidos, DNI, dirección, fecha de nacimiento y sexo (‘H’ o ‘M’). 
De cada profesor se especificarán los siguientes datos: nombre, apellidos, DNI, dirección, título académico (a elegir entre LDO, DDO, CFGS) y un precio por hora (con dos decimales y siempre mayor que 0).  
Cada curso tendrá un nombre, un código único que lo identifica, el número de alumnos recomendado en el curso (mínimo 10 personas), el profesor que tiene asignado(mediante el identificador del profesor), la fecha de inicio, la fecha de finalización del curso (siempre debe ser mayor que la fecha de inicio) y el número total de horas del curso (siempre mayor o igual a 80).  
Estos alumnos estarán matriculados en un solo curso cada uno, por lo que hay que añadir este nuevo atributo en la tabla alumnos y configurarlo como clave foránea.  
Aportar el código SQL para crear la base de datos completa, incluyendo las restricciones, claves primarias, claves foráneas  
