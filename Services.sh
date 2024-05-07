#!/bin/bash

# Función para listar el contenido de un fichero (carpeta)
listar_contenido() {
    read -p "Introduce la ruta absoluta del fichero o carpeta: " ruta
    ls -l "$ruta"
}

# Función para crear un archivo de texto con una línea de texto
crear_archivo() {
    read -p "Introduce la cadena de texto para el archivo: " texto
    read -p "Introduce el nombre del archivo a crear: " nombre
    echo "$texto" > "$nombre"
    echo "Archivo creado: $nombre"
}

# Función para comparar dos archivos de texto
comparar_archivos() {
    read -p "Introduce el nombre del primer archivo: " archivo1
    read -p "Introduce el nombre del segundo archivo: " archivo2
    diff "$archivo1" "$archivo2"
}

# Función para mostrar el uso de awk
uso_awk() {
    echo "Ejemplo de uso de awk:"
    echo "Imprimir la tercera columna de un archivo CSV:"
    awk -F ',' '{print $3}' archivo.csv
}

# Función para mostrar el uso de grep
uso_grep() {
    echo "Ejemplo de uso de grep:"
    echo "Buscar una cadena de texto en un archivo:"
    read -p "Introduce la cadena a buscar: " cadena
    grep "$cadena" archivo.txt
}

# Menú principal
while true; do
    echo "---- MENU DE SERVICIOS ----"
    echo "1. Listar contenido de un fichero o carpeta"
    echo "2. Crear un archivo de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Mostrar uso de awk"
    echo "5. Mostrar uso de grep"
    echo "6. Salir"

    read -p "Elige una opción: " opcion

    case $opcion in
        1)
            listar_contenido
            ;;
        2)
            crear_archivo
            ;;
        3)
            comparar_archivos
            ;;
        4)
            uso_awk
            ;;
        5)
            uso_grep
            ;;
        6)
            echo "Saliendo del script."
            exit 0
            ;;
        *)
            echo "Opción no válida. Inténtalo de nuevo."
            ;;
    esac
done
