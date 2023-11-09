sudo groupadd asistente 2>/dev/null
sudo groupadd operadores 2>/dev/null

sudo useradd fer 2>/dev/null
sudo useradd mar 2>/dev/null
sudo useradd lopez 2>/dev/null

sudo usermod fer -G operadores 2>/dev/null
sudo usermod mar -G operadores 2>/dev/null
sudo usermod lopez -G operadores 2>/dev/null

if [ "$1" != "" ]; then
    nombre=pc$1

    sudo useradd $nombre 2>/dev/null
    sudo usermod $nombre -G asistente 2>/dev/null
fi
