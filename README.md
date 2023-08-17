# cambiarMac automaticamente
Cambiar MAC

1.    git clone https://github.com/FJTSYSTEMS2014/cambiarMac.git
2.    cd cambiarMac
3.    chmod +x GestionInterfaz.sh
4.   ./GestionInterfaz.sh

5. Nota: Inicialmente debemos conectarnos a una red conocida.
6. Luego ejecutamos ./GestionInterfaz.sh
7.  Seleccionas la interfaz a la que quieres cambiarle la MAC (por ejemplo wlan0)
8. Listo, tienes Mac nueva hasta el proximo reinicio.



## Para que puedas hacer doble clic en el escritorio para ejecutar el script, necesitas crear un archivo de lanzador .desktop. Este archivo le dirá al sistema cómo ejecutar el script. Crea un archivo llamado "CambiarMac.desktop"  en la carpeta ~/.local/share/applications/

### copiar lo siguiente en el archivo CambiarMac.desktop:

[Desktop Entry]
Version=1.0
Type=Application
Name=CambiarMac
Comment=Ejecuta mi script de ejemplo
Exec=/ruta/a/CambiarMac.sh 
Icon=/ruta/a/CambiarMac.png
Terminal=false
Categories=Utility;


## Asegúrate de reemplazar /ruta/a/CambiarMac.sh con la ruta completa hacia el script .shy /ruta/a/CambiarMac.png con la ruta de un icono que quieras usar para el lanzador.

Habilita la ejecución del lanzador:
Una vez que hayas creado el "CambiarMac.desktop", puedes necesitar darle permisos de ejecución:

chmod +x CambiarMac.desktop

Actualiza el cache de lanzadores:
Para que el sistema reconozca el nuevo lanzador, actualiza el cache de lanzadores:

update-desktop-database ~/.local/share/applications/

Ahora deberías poder hacer doble clic en el archivo CambiarMac.desktop en tu escritorio o en el menú de aplicaciones y se ejecutará el CambiarMac.sh. Ten en cuenta que si estás usando un entorno de escritorio específico, como GNOME o KDE, el proceso podría variar un poco, pero en general, estos pasos deberían funcionar para la mayoría de los entornos de Linux.



