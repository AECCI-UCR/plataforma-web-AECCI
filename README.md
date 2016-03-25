# Plataforma AECCI

## Descripción
**Plataforma AECCI** nace como una iniciativa para ayudar a la **Asociación de estudiantes de la Escuela de Ciencias de la Computación e Informática de la Universidad de Costa Rica** (UCR). El objetivo es proveer un sitio web donde se muestre información relevante para los estudiantes de la escuela.

La plataforma está desarrollada hasta este momento para ofrecer el servicio de consultar exámenes de semestres anteriores, con el fin de que los puedan utilizar como una especie de guía para estudiar. Además se puede consultar anuncios que los miembros de la asociación consideren relevantes compartir con la comunidad estudiantil.


### ¿Por qué hacer un proyecto de cero si existen alternativas como *Moodle* o *Claroline*?
Esta iniciativa nace de dos estudiantes con el deseo de **aprender** más sobre el desarrollo de aplicaciones web. Entre las muchas opciones para implementar la plataforma para escoger se decidió utilizar el lenguaje ***Ruby*** y el framework ***Rails***. Dicho lo anterior, sabemos que el código puede estar mucho mejor organizado, implementado, eficiente, con nombres más significativos, etc. Por eso le pedimos que si cree que parte del código fuente puede ser mejorado, refactorizado, etc, no dude colaborar con el proyecto.

La plataforma puede ser extendida para cubrir más necesidades de los estudiantes de la escuela. Si tiene ideas o si quiere implementarlas, no dude en colaborar con el proyecto de la misma forma.

### Cosas que mejorar
* Hasta este momento nos hace mucha falta realizar ***test***. Si desea colaborar en este apartado, no dude en colaborar (De verdad lo necesitamos).

* El código *Javascript* no está bien estructurado, ya que no hemos tenido experiencia en este lenguaje. Si desea ayudar a refactorizar, estructurar, etc el código, no dude en colaborar (De verdad de verdad lo necesitamos).
* Acomodar los CSS.
* Documentación interna.

- - -

## Como empezar

### Primeros pasos
Esta plataforma está desarrollada en ***Ruby on Rails***, así que antes de empezar a trabajar lo primero que necesita es saber *Ruby*. [Este es una buena introducción al lenguaje](http://rubykoans.com/).

Luego debe familiarizarse con el *framework Rails*. [Puede empezar aquí](https://www.railstutorial.org/book)

### ¿Cómo contribuir?
1. *Fork it*.
1. Cree su rama (`git checkout -b mi-nueva-característica`).
1. Haga *commit* de sus cambios (`git commit -am 'Añade alguna característica'`).
1. *Push* de la rama (`git push origin mi-nueva-característica`).
1. Cree un nuevo *pull request*.

### Ambiente de dessarrollo
1. Instalar Ruby.
1. Instalar la gema `bundle` y `rails` (Se está usando la versión 4.2.5.1).
1. Instalar *NodeJS*
1. Ingresar a la carpeta del proyecto y digitar `bundle install`
1. `rake db:migrate`
1. Listo!

Para saber que todo funciona bien, digite `rails server` y vaya a `http://localhost:3000` donde debería estar la aplicación web funcionando.