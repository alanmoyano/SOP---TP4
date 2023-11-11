sudo groupadd asistente 2>/dev/null
sudo groupadd operadores 2>/dev/null

if [ "$?" == "9" ]; then
    echo "Los grupos ya existían anteriormente."
else
    echo "Los grupos han sido creados exitosamente."
fi

sudo useradd fer 2>/dev/null
sudo useradd mar 2>/dev/null
sudo useradd lopez 2>/dev/null

if [ "$?" == "9" ]; then
    echo "Los usuarios ya existían anteriormente."
else
    echo "Los usuarios han sido creados exitosamente."
fi

sudo usermod fer -G operadores 2>/dev/null
sudo usermod mar -G operadores 2>/dev/null
sudo usermod lopez -G operadores 2>/dev/null

echo "Los usuarios han sido añadidos a los grupos correctamente."

if [ "$1" != "" ]; then
    nombre=pc$1

    sudo useradd $nombre 2>/dev/null

    if [ "$?" == "9" ]; then
        echo "El usuario $nombre ya existía anteriormente."
    else
        echo "El usuario $nombre ha sido creado exitosamente."
    fi

    sudo usermod $nombre -G asistente 2>/dev/null

    echo "El usuario $nombre ha sido añadido al grupo correctamente."
fi
