> # Sistemas y Tecnologías Web 2014-2015

![](http://www.sinatrarb.com/images/logo.png)
## Práctica 2 - Testing Sinatra

#### Objetivo
El objetivo de esta práctica es empezar a usar la metodología *TDD* con *Sinatra* para desarrollar aplicaciones web en Ruby. {...} . El objetivo de la práctica sigue siendo el mismo, dado un usuario perteneciente a twitter, listar sus amigos mas populares.

- - -
#### Estructura de la aplicación
```
├── configure.rb.example
├── Gemfile
├── Gemfile.lock
├── public
│   ├── bg.jpg
│   ├── bootstrap.css
│   ├── bootstrap.min.css
│   ├── estilo.css
│   ├── landing-page.css
│   └── logo.png
├── Rakefile
├── Readme.md
├── sinatra.rb
└── views
    └── sinatra.erb
```

- - -

#### Modo de empleo
Para empezar a usar la práctica debemos hacer:

-   `$ bundle install`, en el directorio raiz de la aplicacion, para que instale las gemas de las que depende para funcionar.

-   Lo siguiente que debe hacer es dar de rellenar con sus credenciales el fichero *configure.rb.example*, dichas credenciales las debe conseguir [aquí](https://apps.twitter.com/), donde debe registrar su aplicación para conseguir la credenciales.

- Para correr la aplicación `$ ruby sinatra.rb` o también podemos usar `$ rake`, que como tarea por defecto corre la aplicación.

- Iremos al puerto **localhost:4567** en nuestro navegador y ya podremos interactuar con la aplicación.

- - -

###Autores

- Vïctor Juidías Rodríguez - alu0100537017
- Débora Martín Pinillos - alu0100537154








