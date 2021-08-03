# SystemAdministrationByUsingDocker

[How to Create a Virtual Machine using VirtualBox](https://www.youtube.com/watch?v=j1FAZ0bUEvs)
```bash
$ sudo apt install dkms build-essential
```

[Download Ubuntu](https://ubuntu.com/download/desktop)

[How to install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/)

Before you install Docker Engine for the first time on a new host machine, you need to set up the Docker repository. Afterward, you can install and update Docker from the repository.

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

    ```bash
    $ sudo apt-get update
    $ sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
    ```
2. Add Docker’s official GPG key:
    ```bash 
    $ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    ```
3. Use the following command to set up the stable repository. To add the nightly or test repository, add the word nightly or test (or both) after the word stable in the commands below. 
    ```bash
    $ echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    ```
4. Update the apt package index, and install the latest version of Docker Engine and containerd, or go to the next step to install a specific version:
    ```bash
    $ sudo apt-get update
    $ sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```

5. Verify that Docker Engine is installed correctly by running the hello-world image.
    ```bash
    $ sudo docker run hello-world
    ```

[How to install Docker Compose on Linux systems](https://docs.docker.com/compose/install/)

On Linux systems, first install the Docker Engine for your OS as described on the Get Docker page, then come back here for instructions on installing Compose on Linux systems.

1. Run this command to download the current stable release of Docker Compose:
```bash
  $ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```
2. Apply executable permissions to the binary:
```bash
  $ sudo chmod +x /usr/local/bin/docker-compose
```

3. Test the installation.
```bash
  $ docker-compose --version
```

[YAML Tutorial: Get Started With YAML in 5 Minutes](https://betterprogramming.pub/yaml-tutorial-get-started-with-yaml-in-5-minutes-549d462972d8)

