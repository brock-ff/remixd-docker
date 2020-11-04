# remixd-docker
Run remixd in a docker container with volume mapping to import local smart contracts source.

### Build docker image
```sh
./build.sh
```

### Add smart contracts to source directory and run it
```sh
cp ~/my/contracts/* ./contracts
./start.sh
```

Or, if you don't want to copy them, supply your source directory as an argument.
```sh
./start.sh ~/my/contracts/
```

In your web browser, navigate to https://remix.ethereum.org. Then, click **Connect to Localhost** to connect to your daemon.

Press Ctrl-Z to kill the server.

### Remove container before rebooting
```sh
./stop.sh
```
