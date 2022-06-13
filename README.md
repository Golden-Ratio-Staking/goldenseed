# NEEDS UPDATE. IGNORE ALL OF THIS FOR NOW.

## GoldenSeed is a fork of Notional Lab's TinySeed, which is a fork of Binary Holding's Tenderseed, which is a fork of Polychain's Tenderseed.

This tool runs a seed node for any tendermint based blockchain, crawls the network and generates a map with the geolocalisation of the peers.

It is used to pinpoint centralization of network in common infrastructure hosts like AWS, GCP etc, as well as to globally lanunch new chains from Miredo-enabled, edge-of-network write-through-cache powered raspberry pi devices that provide validation at a fraction of the original cost. 
 

## Configuration

You can run this straight up with screen (or service file), OR you can use `Docker Compose` to run multiple seed nodes at once, with the meticulously crafted (and often updated) `docker-compose.yml` I created with all the seeds listed from comsos.directory. We will focus on the seed node maxi portion here.

First, you're going to need Docker. Here's a script to get the latest version.
```
curl https://raw.githubusercontent.com/Golden-Ratio-Staking/GoldenRatioNodes/main/scripts/docker_bootstrap.sh | bash
```

Test to see if `Docker` is properly installed:
```
sudo docker run hello-world
```

Next, clone the repo and then install:
```
git clone https://github.com/Golden-Ratio-Staking/goldenseed
cd goldenseed
go install .
```

Finally, start the containers (seed nodes):
```
sudo docker compose up -d
```

## Helpful Commands

View Full Logs
```
sudo docker compose logs
```

View Node Key
```
sudo docker compose logs | grep "key"
```
## License

[Blue Oak Model License 1.0.0](https://blueoakcouncil.org/license/1.0.0)
