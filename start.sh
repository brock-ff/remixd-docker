if [ $# -eq 0 ]; then
  SRC=$PWD/contracts
else
  SRC=$1
fi

echo "Hosting remixd with smart contracts at $SRC"

docker run --rm \
-v $SRC:/usr/remix/source \
-p 65520:65520 \
--name remixd \
remixd
