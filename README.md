# Meetup Elixir

[![Meetup](https://pbs.twimg.com/media/EBU3sj-XsAUuQ4S?format=jpg&name=small)](https://docs.google.com/presentation/d/1k-b0ZyorMEVCmatgjKGxjrP-eQQeaLbyivJCQNqeDy8/edit#slide=id.p3)

### Configurar variables de entorno.

El archivo __.env.dist__ contiene un listado actualizado de las variables de entorno necesarias para el proyecto que se deben copiar a uno nuevo llamado __.env__ (Esto solo si deseas usar los mismos valores para hacer pruebas con cada entorno)

Exporta las variables

```shell
export $(cat .env | xargs)
```
