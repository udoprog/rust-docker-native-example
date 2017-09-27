#!/bin/bash
set -e

dest="$1"

if [[ -z $dest ]]; then
    exit 1
fi

docker build -t rust-build -f $dest/Dockerfile.build $dest
id=$(docker create rust-build)
docker cp $id:/buildroot/target/release $dest/release
docker build -t rust-$dest $dest

echo "Built: rust-$dest"
