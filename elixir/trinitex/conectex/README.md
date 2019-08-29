# Conectex

### Configurar variables de entorno.

El archivo __.env.dist__ contiene un listado actualizado de las variables de entorno necesarias para el proyecto que se deben copiar a uno nuevo llamado __.env__

Exporta las variables

```shell
export $(cat .env | xargs)
```

### Comandos útiles.

- __make run__: ejecuta script de hello world.
