# Plataforma AECCI

> La rama *master* es la que tiene las versiones estables. En la rama *dev* se va a trabajar el desarrollo.

### Notas
#### Hacer que la app se observe desde la red de la ECCI teniendo el servidor desde Koding.Koding

```bash
# Apagar Apache
# sudo service apache2 stop

# Servidor Rails (WebBrick)
rails s -b 0.0.0.0 -p 8080
```

Para visitar la pagina `[IP || Dominio Koding]:8080`