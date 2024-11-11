# Limitar uso de procesador
Limitar la cantidad de núcleos de CPU:
```
--cpus=<número de núcleos>
```

Asignar núcleos de CPU específicos:
```
--cpuset-cpus=<lista de núcleos>
```

**¿Como saber el numero de procesadores virtuales que tiene una máquina?**

# Cómo Saber el Número de Procesadores Virtuales (vCPUs) en Linux

En Linux, puedes utilizar varios comandos para ver el número de procesadores virtuales (vCPUs) que tiene tu máquina:

## 1. Usando `nproc`
Este comando muestra directamente el número de vCPUs.

`nproc`

## 2. Usando `lscpu`
Este comando da un resumen detallado de la configuración de la CPU, incluyendo el número total de vCPUs.

`lscpu | grep "^CPU(s):"`

## 3. Usando `/proc/cpuinfo`
También puedes revisar el archivo `/proc/cpuinfo` para contar el número de vCPUs. Este comando cuenta las líneas que contienen "processor", que representan cada vCPU.

`cat /proc/cpuinfo | grep "^processor" | wc -l`

Cada uno de estos comandos te mostrará el número de **procesadores virtuales (vCPUs)** disponibles en el sistema Linux.


## Ejemplos
_Puedes copiar y ejecutar directamente cada uno de los comandos_

Limitar el uso de CPU a 1.5 núcleos
```
docker run -d --name server-nginx --cpus="1.5" nginx:alpine
```

Restringir el contenedor para que use los núcleos de CPU 0 a 2:
```
docker run -d --name server-nginx --cpuset-cpus="0-2" nginx:alpine
```

Restringir el contenedor para que use los núcleos de CPU 1 y 3:
```
docker run -d --name server-nginx --cpuset-cpus="1,3" nginx:alpine
```
