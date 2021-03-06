# The Secret Nodes Cookbook
The Secret Nodes Cookbook is a collection of recipes for privacy. More information (recepies) will be added as time goes on.

[![asciicast](https://asciinema.org/a/297423.svg)](https://asciinema.org/a/297423)

# Provision your machine with software needed to run nodes.
This script will download SGX drivers, docker, docker compose, and a collection of scripts to launch various nodes.

1. Download our node provision script.
```bash
wget https://raw.githubusercontent.com/secretnodes/cookbook/master/provision.sh
```

2. Run the secretnodes.org provision script. Be sure to respond with "y" or "yes" to all inquiries.
```bash
sudo bash provision.sh
```
3. Run the following command:
```bash
sudo gpasswd -a $USER docker
```

4. Run the following command:
```bash
newgrp docker
```

5. Run the following command:
```bash
docker ps
```

If the command returns a permission error, then reboot your machine and try again from step 3.


