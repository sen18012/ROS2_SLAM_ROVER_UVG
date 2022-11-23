# ROS2_SLAM_ROVER_UVG
 Implementación de SLAM TOOLBOX en ROS2 Foxy para el proyecto Rover UVG

![Alt Text](https://msadowski.github.io/images/slam_toolbox_odom.gif) 

## Introducción
El problema de Localización y Mapeo Simultáneo , SLAM por sus siglas en inglés, es una de las herramientas de mayor uso en robot móviles con ruedas. Como su nombre lo indica, esto permite que un robot pueda localizarse a el mismo y a posibles obstáculos y barreras que hayan en las áreas que recorre. Este problema puede solucionarse por medio de distintos algoritmos acompañado de la información entregada por una variedad de sensores de distancia y de posición. 
En este proyecto en específico para la localización se utilizó un sistema de captura de movimineto marca Optitrack y para la lectura del entorno se utilizó un sensor Lidar Hokuyo URG-04LX-UG01.
A continuación se presentan los documentos y archivos de programación utilizados en este proyecto. 


## Documentos
En esta carpeta se encuentran archivos de alta relevancia para la realización de este proyecto. Iniciando con los antecedentes de proyecto similares realizados en la Universidad del Valle de Guatemala, como la hoja de datos y el manual del protocolo de comunicación utilizados por el Hokuyo URG-04LX-UG01. Por último se enceuntra un documento con enlaces a archivos, videos y tutoriales referentes al tema. 


## Arduino - Matlab
En esta carpeta se encuentran los archivos utilizados para realizar pruebas con el sensor Hokuyo URG-04LX-UG01. Para esto se utilizó un Arduino UNO con un USB Host Shield para la lectura de datos. Estos datos se envían por UART y son procesados en un programa de MATLAB en donde la información es decodificada y graficada. 

## ROS-ROVER-UVG
En esta carpeta se enceuntra el Workspace que contiene los paquetes (ROS2 pkg) necesarios para implementar SLAM en el Rover UVG utilizando como sensores un sistema de captura de movimineto marca Optitrack para obtener la pose del robot y para la lectura de las distancias del entorno un sensor Lidar Hokuyo URG-04LX-UG01.

Este proyecto se desarollo en la versión ROS2 Foxy Fitzroy, instalado en el sistema operativo Ubuntu 20.04 en una máquina virtual VMWare Workstation con las siguientes características:
- Versión: 16.2
- RAM: 4096 MB
- Almacenamiento: 25 GB 

Para la instalación de ROS2 Foxy se siguió la documentación oficial como guía y se realizó una instalación por medio de "debian packages" para incluir todos los packetes relacionados a simulación y visualización. Esta información se puede obtener en el siguiente enlace:  https://docs.ros.org/en/foxy/Installation.html

Seguido a la instalación de ROS2 es necesario instalar una serie de paquetes independientes para el correcto funcionamiento del proyecto. 


- Instalación de paquetes Relacionados a Navigation Stack (Nav2) 
```console
~$ sudo apt install ros-foxy-joint-state-publisher-gui
```

```console
~$ sudo apt install ros-foxy-xacro
```

```console
~$ sudo apt install ros-foxy-tf2-tools
```

- Instalación de SLAM Toolbox
```console
~$ sudo apt install ros-foxy-slam-toolbox
```

- Instalación de URG Node
```console
~$ sudo apt install ros-foxy-urg-node
```




