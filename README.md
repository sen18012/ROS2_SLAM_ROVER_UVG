# ROS2_SLAM_ROVER_UVG
 Implementación de SLAM TOOLBOX en ROS2 Foxy para el proyecto Rover UVG

![Alt Text](https://msadowski.github.io/images/slam_toolbox_odom.gif) 

## Introducción
El problema de Localización y Mapeo Simultáneo , SLAM por sus siglas en inglés, es una de las herramientas de mayor uso en robot móviles con ruedas. Como su nombre lo indica, esto permite que un robot pueda localizarse a el mismo y a posibles obstáculos y barreras que hayan en las áreas que recorre. Este problema puede solucionarse por medio de distintos algoritmos acompañado de la información entregada por una variedad de sensores de distancia y de posición. 
En este proyecto en específico para la localización se utilizó un sistema de captura de movimineto marca Optitrack y para la lectura del entorno se utilizó un sensor Lidar Hokuyo URG-04LX-UG01.
A continuación se presentan los documentos y archivos de programación utilizados en este proyecto. 


## Documentos
- Documentos, en donde se encuentran el trabajo de graduación y protocolo que se realizó como propósito de este proyecto. 



## Arduino - Matlab

## ROS-ROVER-UVG

Es importante mencionar que todo el proyecto se realizó mendiante la versión de ROS 2, específicamente su distribución Foxy. Para poder ejecutar los programas de ROS fue necesario tener una máquina virtual con Linux. Fue por ello que se descargó VirtualBox del siguiente enlace: https://www.virtualbox.org/es, y se seleccionaron las siguientes características:


|Sistema Operativo|    RAM  | Procesadores| Almacenamiento |
|-----------------|---------|-------------|----------------|
| Ubuntu (64 bits)| 9192 MB |    2        | 30 GB            |




```console
~$ sudo apt install python3-colcon-common-extensions
```


