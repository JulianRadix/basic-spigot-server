$ chmod +x server.sh
$ ./server.sh
$ nano eula.txt
$ sudo nano /etc/systemd/system/spigot.service

#### CODE ####
[Unit]
Description=SpigotMC
After=network.target

[Service]
Type=forking
User=minecraft
Group=minecraft
ExecStart=/usr/bin/screen -d -m -S minecraft /home/minecraft/server/spigotstart.sh
ExecStop=/usr/bin/screen -S minecraft -p 0 -X stuff "stop$(printf \\r)"
WorkingDirectory=/home/minecraft/server

[Install]
WantedBy=multi-user.target

$ sudo systemctl daemon-reload
$ sudo systemctl enable spigot
$ sudo systemctl start spigot
