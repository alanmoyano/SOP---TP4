sudo groupadd asistente
sudo groupadd operadores

sudo useradd fer
sudo useradd mar
sudo useradd lopez

sudo usermod fer   -G operadores 
sudo usermod mar   -G operadores 
sudo usermod lopez -G operadores 


if [ "$1" != "" ]; then
    nombre=pc$1

    useradd $nombre
    usermod $nombre -G asistente
fi
