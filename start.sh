docker run --rm \
-v $PWD/contracts:/usr/remix/source \
-p 65520:65520 \
--name remixd \
remixd
