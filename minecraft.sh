$ sudo apt install openjdk-17-jre-headless
$ java --version
$ sudo apt install git
$ sudo adduser minecraft
$ sudo su - minecraft
$ cd ~
$ mkdir buildtools && cd buildtools
$ wget -O BuildTools.jar  https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
$ java -jar BuildTools.jar --rev 1.20
$ ls 
$ cd ~ && mkdir server && cd server
$ mv ~/buildtools/spigot-1.20.1.jar ~/server/spigot.jar
$ sudo nano server.sh
