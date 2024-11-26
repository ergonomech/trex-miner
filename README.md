
# T-Rex Miner Docker Image

This repository provides a Docker setup for running the T-Rex Miner for mining cryptocurrencies such as Conflux and Ravencoin. The image is based on `nvidia/cuda:12.6.1-base-ubuntu20.04` and includes all necessary dependencies for efficient GPU mining.

---

## Prerequisites

1. **Docker**: Ensure Docker is installed on your system. You can download it from the [Docker official website](https://www.docker.com/products/docker-desktop/).
2. **NVIDIA Drivers**: Make sure you have the latest NVIDIA drivers installed for your GPU.
3. **NVIDIA Container Toolkit**: Install the NVIDIA Container Toolkit to enable GPU support in Docker. Follow the installation guide [here](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html).

---

## Build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t trex-miner .
```

---

## Usage Examples

### Mining Conflux (CFX)

To mine Conflux using the Octopus algorithm:

```bash
docker run --rm --gpus all trex-miner /app/t-rex -a octopus -o stratum+tcp://cfx-us-east1.nanopool.org:10500 -u YOUR_CONFLUX_WALLET_ADDRESS.WORKER_NAME
```

- Replace `YOUR_CONFLUX_WALLET_ADDRESS` with your Conflux wallet address.
- Replace `WORKER_NAME` with your desired worker name.

### Mining Ravencoin (RVN)

To mine Ravencoin using the KawPow algorithm:

```bash
docker run --rm --gpus all trex-miner /app/t-rex -a kawpow -o stratum+tcp://rvn.2miners.com:6060 -u YOUR_RAVENCOIN_WALLET_ADDRESS.WORKER_NAME
```

- Replace `YOUR_RAVENCOIN_WALLET_ADDRESS` with your Ravencoin wallet address.
- Replace `WORKER_NAME` with your desired worker name.

---

## Monitoring and Logs

To monitor mining activity, view the container logs:

```bash
docker logs CONTAINER_ID
```

Replace `CONTAINER_ID` with the ID of the running container.

---

## Notes

1. **Mining Pools**: Ensure you are using a reliable mining pool. Adjust the pool URL and port in the commands as needed.
2. **GPU Performance**: Optimize your GPU settings (e.g., power limit, overclocking) outside the container for better performance.

---

## License

This repository is provided as-is, without warranty of any kind. Use it at your own risk.

Happy Mining!

(AI GENERATED README.md)

