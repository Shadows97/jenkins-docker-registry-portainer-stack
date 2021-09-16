# jenkins-docker-registry-portainer

## Prerequisites

Make sure to have docker and docker-compose installed in your system.
If you have not it, you can run for **Linux** user:
```bash
wget -O - https://raw.githubusercontent.com/Shadows97/jenkins-docker-registry-portainer-stack/master/install_docker.sh | bash
```

Now you must init **Swarm** if you have not already do it
```bash
docker swarm init --advertise-addr <your_host_ip_address>
```
## Running the system

### Installation

Start by **forking** the repo
```bash
git clone https://github.com/Shadows97/jenkins-docker-registry-portainer-stack.git
```
Now run *configuration* for create persistance data folder, install requirements and launch **Portainer Stack** and the **Jenkins and Registry Stack**
```bash
chmod +x config.sh
sh config.sh
```
At the end of this command you will find:
- 2 **Stack**(*global and portainer*)
- 4 **Services**(*global_jenkins,global_registry, portainer_agent and portainer_portainer*)

Each *service* is bind on one or more port:
- global_jenkins (**8081 and 50000**)
- global_registry (**5000**)
- portainer_portainer(**8000 and 9001**)

# Contributors

* M'PO Beniwo Charbel Derrick <mpoderrick97@gmail.com.com>"


