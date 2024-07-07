# #!/bin/bash

expresion_regular='^(booteth|nodeth[1-3])$'
for archivo in $(ls booteth/data); do
    if [[ "$archivo" =~ $expresion_regular || "$archivo" == "key" ]]; then
        echo "Preservando: $archivo"
    else
        rm "$archivo"
        echo "Eliminando: $archivo"
    fi
done

for archivo in $(ls nodeth1/data); do
    if [[ "$archivo" =~ $expresion_regular || "$archivo" == "key" ]]; then
        echo "Preservando: $archivo"
    else
        rm "$archivo"
        echo "Eliminando: $archivo"
    fi
done

for archivo in $(ls nodeth2/data); do
    if [[ "$archivo" =~ $expresion_regular || "$archivo" == "key" ]]; then
        echo "Preservando: $archivo"
    else
        rm "$archivo"
        echo "Eliminando: $archivo"
    fi
done

for archivo in $(ls nodeth3/data); do
    if [[ "$archivo" =~ $expresion_regular || "$archivo" == "key" ]]; then
        echo "Preservando: $archivo"
    else
        rm "$archivo"
        echo "Eliminando: $archivo"
    fi
done