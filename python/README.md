# Client gRPC

### Configurar variables de entorno.

El archivo __.env.dist__ contiene un listado actualizado de las variables de entorno necesarias para el proyecto que se deben copiar a uno nuevo llamado __.env__

Exporta las variables

```shell
export $(cat .env | xargs)
```

### Establecer setup.

```shell
python3 -m venv venv
source venv/bin/activate
```

### Instalar dependencias.

```shell
pip install -r requirements.txt
```

### Ejecutar cliente.

```shell
python main.py
```

### Comandos útiles.

- __make gen_proto__: Genera _pb2.py de todos los protos de dentro de bisnex.

Si deseas utilizar este comando necesitas instalar *grpcio-tools*

```shell
pip install grpcio-tools
```
