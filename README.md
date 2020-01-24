# remixd-docker
Run remixd in a docker container with volume mapping to import local smart contracts source.

### Build docker image
```sh
./build.sh
```

### Add smart contracts to source directory
```sh
cp ~/my/contracts/* ./contracts
```

Or, if you don't want to copy them, change the volume mapped in `start.sh`.
```sh
# start.sh
...
-v ~/my/contracts/:/usr/remix/source \
...
```

### Run container
```sh
./start.sh
```

In your web browser, navigate to https://remix.ethereum.org. Then, click **Connect to Localhost** to connect to your daemon.

Press Ctrl-C to kill the server.

### Remove container before rebooting
```sh
./stop.sh
```
