# COMANDOS DOCKER 

* Saber se o docker está funcionando
    * `docker run hello-world`

* Visualizar containers em execução
    * `docker ps`

* visualizar todos os containers existentes
    * `docker ps -a`

* parar um container
    * `docker stop <id do container>`

* remove um container
    * `docker rm <id do container>`

* remove uma imagem
    * `docker rmi <id da imagem>`

* passando a opção -d executa um container em segundo plano
    * `docker run -d <nome do container>`

* passando a opção -p para expor portas do container. Tudo na porta 8080 do host será redirecionado para a porta 80 do container
    * `docker run -d -p 8080:80 <nome do container>`

* passando o parametro --name é possivel dar um nome a um container
    * `docker run -d -p 8080:80 --name <nome dado ao container> <nome do container>`

* executar um comando dentro de um container
    * `docker exec <nome do container>`

* executa o comando ls dentro do container
    * `docker exec <nome do container> ls`

* sobe um container, o comando exec entra no container passando o comando /bin/bash
    * `docker exec -it <nome do container> /bin/bash`

* criar uma imagem apartir de um container
    * `docker commit webserver nginxdefault:v1`
    * `docker commit <nome do container> <nome da imagem:numero da versao>`

* criar um container apartir de uma imagem criada
    * `docker run -d -p 8081:80 <nome da imagem criada a partir do container>`

* parametro -v cria um volume no container
    * `docker run -it -v /data --name <nome dado ao container> <nome do container>`

* inspecionar container
    * `docker inspect <nome do container>`

* reiniciar container
    * `docker restart <nome do container>`

* compartilhando volumes
    * `docker run -d -p 8084:80 -v <caminho da pasta a ser mapeada> : <caminho da pasta destino> --name <nome dado ao container> <nome do container>`

* compartilhar um diretório atual para outro container através de volumes
    * `docker run -d -p 8085:80 --volumes-from <nome do container> --name <nome do outro container> <container>`

* subir banco de dados mysql como container
    * `docker run --name mysql -e MYSQL_ROOT_PASSWORD=<senha do banco> -e MYSQL_DATABASE=<nome do banco> -d mysql:5.7`
    * `docker run --name mysql -e MYSQL_ROOT_PASSWORD=andromeda -e MYSQL_DATABASE=wordpressDB -d mysql:5.7`
    
* Linkar imagens
    * `docker run --name <nome do container> --link <nome do container>:<container> -d -p <porta da maquina fisica>:<porta do container> <container>`
    * `docker run --name wordpress --link dbserver:mysql -d -p 8088:80 wordpress`

* Dockerfile é um arquivo que permite criar imagens de um container docker de maneira declarativa e mais produtiva 

* constrói uma image (parametro -t define uma tag )
    * `docker build -t <nome para imagem>/<nome do container>`

* verificar logs de um container que não subiu ##
    * `    docker ps -a (copiar o id do container)`
    * `    docker logs <id do container>`

* Docker-compose
    * arquivo usado para definir quais serviços serão utilizados na hora de subir um container.
    * Para subir os serviços, rode o comando `docker-compose up -d`
