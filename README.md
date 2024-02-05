# Trabajo Final Integrador de Taller de Tecnologias de Produccion de Software - Opcion Ruby

# Alumno a del proyecto: Luciano Andrés De Julio - nro. alumno: 15657/8

### Requisitos necesarios para poder correr la aplicacion

-Tener instalado la version de Ruby 3.2.2
-Tener instalado un navegador web

### Pasos a seguir para poder correr la apliacion localmente :

Clonar el repositorio:
 
    Para esto, abrir una terminal y ejecutar el siguiente comando: git clone https://github.com/LucianoDeJulio/TrabajoFinalIntegrador.git

Una vez dentro de la carpeta que contiene el proyecto, ejecutar los siguientes comandos necesarios:


 1°- Instalar todas las dependencias necesarias: 
    
    bundle install

 2°- Genera la base de datos con datos de prueba:

    rails db:migrate
    rails db:seed

 3°- Correr el servidor:

    rails server 

Una vez ejecutado los comandos anteriores, en la salida de la terminal te aparecere una URL que te permite ingresar a la aplicacion desde el navegador. La URL es la siguiente:

    http://127.0.0.1:3000


# Diseño:

Para empezar, cree con la gema devise el modelo de usuario en la cual me permitia crear usuarios y loguearse en el sistema asi como tambien tener las funcionalidades de alta, baja o modificacion de los mismo.

Para la gestion de links, cree un modelo de links, pero en vez de crear distintos modelos de links decidi crear un unico modelo pero cada link tiene su propia validacion. Tambien este modelo permite crear links y que cada usuario pueda acceder a los links que haya creado.

Para el acceso a los links, cree un modelo de accesos, en el cual se va registrando los accesos a los links.


# Gemas utilizadas en el proyecto:

- Para la creacion del modelo de usuarios y alta, baja o modificacion de los mismos: "devise"
- Para las cuestiones estilos de diseño: "bootstrap"
- Para el paginado: "will_paginated"
- Para las contar las cantidad de accesos por dia a un link: "groupdate"
- Para el filtrado en el tipo de acceso a los links: "ransack"
