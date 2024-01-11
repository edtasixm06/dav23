# davfs
## @edt ASIX M06-ASO Curs 2023-2024

Podeu trobar les imatges docker al Dockehub de [edtasixm06](https://hub.docker.com/u/edtasixm06/)

Podeu trobar la documentació del mòdul a [ASIX-M06](https://sites.google.com/site/asixm06edt/)

ASIX M06-ASO Escola del treball de barcelona

### DAV Containers:

 * **edtasixm06/dav23:git** Serviodr *webdav* d'un directori amb el git de M06-ASO. Engega el servidor
   apache i configura el directori /var/www/webdav per servir el contingut via webdav.  Conté els
   documents i apunts de ASIX M06-ASO.

   Exemple de muntatge manual del recurs webdav ofert: (des de dins del container):
   ```
   mount.davfs -o username=unix01,uid=unix01,gid=100 http://localhost/webdav /mn
   ```



   ```
   $ docker run --rm --name davfs.edt.org -h davfs.edt.org --net mynet --privileged -d  edtasixm06/dav23:git
   ```
