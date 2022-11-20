# ROS2_SLAM_ROVER_UVG
 Implementación de SLAM TOOLBOX en ROS2 Foxy para el proyecto Rover UVG

![Alt Text](https://thumbs.gfycat.com/SizzlingHilariousCopperhead-size_restricted.gif) 

## Introducción

ROS proporciona funcionalidad para la abstracción de hardware, controladores para múltiples dispositivos, comunicación entre procesos dentro de varias máquinas, herramientas para simulación, visualización, entre otros. La característica clave de ROS es cómo se ejecuta el software y cómo se comunica, debido a que permite diseñar software complejo sin saber cómo funciona cierto hardware. Es por ello que gran número de robots que se fabrican hoy en día, utiliza este sistema operativo para su funcionamiento. 


## Documentación y Código

En el presente repositorio se encuentras las siguientes carpetas:

- Documentos, en donde se encuentran el trabajo de graduación y protocolo que se realizó como propósito de este proyecto. 
- Código, se encuentra el código tanto para la simulación del proyecto como para la implementación física.

## Instalación de ROS 2 en una máquina virtual

Es importante mencionar que todo el proyecto se realizó mendiante la versión de ROS 2, específicamente su distribución Foxy. Para poder ejecutar los programas de ROS fue necesario tener una máquina virtual con Linux. Fue por ello que se descargó VirtualBox del siguiente enlace: https://www.virtualbox.org/es, y se seleccionaron las siguientes características:


|Sistema Operativo|    RAM  | Procesadores| Almacenamiento |
|-----------------|---------|-------------|----------------|
| Ubuntu (64 bits)| 9192 MB |    2        | 30 GB            |




```console
~$ sudo apt install python3-colcon-common-extensions
```


