> # Sistemas y Tecnologías Web 2014-2015

![](http://www.sinatrarb.com/images/logo.png)
## Práctica 2 - Testing Sinatra

#### Objetivo
El objetivo de esta práctica es empezar a usar la metodología *TDD* con *Sinatra* para desarrollar aplicaciones web en Ruby. El objetivo de la práctica sigue siendo el mismo, dado un usuario perteneciente a twitter, listar sus amigos mas populares. Pero esta vez debemos de poner en producción la aplicación en la plataforma [Heroku](https://www.heroku.com/).

- - -
#### Estructura de la aplicación
```
├── configure.rb
├── configure.rb.example
├── Gemfile
├── Gemfile.lock
├── public
│   ├── css
│   │   ├── bootstrap.css
│   │   ├── bootstrap.min.css
│   │   ├── estilo.css
│   │   └── landing-page.css
│   ├── images
│   │   ├── bg.jpg
│   │   └── logo.png
│   └── js
│       ├── bootstrap.js
│       └── bootstrap.min.js
├── Rakefile
├── Readme.md
├── test
│   └── test.rb
├── twitter.rb
└── views
    └── index.erb
```

- - -
#### Ramas
El repositorio está divido en varias ramas, para facilitar el desarrollo de la aplicación:
- *Master* es la rama principal de la aplicación, donde está todo el código de la aplicación de la última versión. Vendría a ser nuestra rama *release*.
- *Development* se usa para desarrollar nuevas funcionalidades para la aplicación, es decir versión inestable, sin necesidad de tocar el código que hay en master, para que dicho código permanezca sin cambios hasta que éstos sean definitivos.
- *Production*, es la rama con el código que está puesto en producción en [Heroku](http://stark-tundra-2594.herokuapp.com/).
- *gh-pages* contiene la documentación online de la aplicación. [Gh-Pages](http://alu0100537017.github.io/STW_Practica2_TestingSinatra/).


#### Modo de empleo **manual**

Si se desea se puede descargar desde la rama master la aplicación para probarla en local, verla o modificarla al gusto de cada uno. Solo tiene que hacer:

`$ git clone https://github.com/alu0100537017/STW_Practica2_TestingSinatra.git`
    
Una vez descargada la aplicación

- Haremos un `$ rake install` o un  `$ bundle install`, como se prefiera, para que instale las gemas de las que depende la aplicación para funcionar.

-   Lo siguiente que debe hacer es dar de rellenar con sus credenciales el fichero *configure.rb.example*, dichas credenciales las debe conseguir [aquí](https://apps.twitter.com/), donde debe registrar su aplicación para conseguir la credenciales.

- Para correr la aplicación `$ ruby sinatra.rb` o también podemos usar `$ rake`, que como tarea por defecto arranca la aplicación.

- Iremos al puerto **localhost:4567** en nuestro navegador y ya podremos interactuar con la aplicación.

- - -

###Autores

- Vïctor Juidías Rodríguez - alu0100537017
- Débora Martín Pinillos - alu0100537154








