#/usr/bin/env bash
set -e
set -o pipefail

REPO="jurriaanpro"

args=$1

if [[ -z "${REGISTRY_USERNAME}" ]]; then
    echo "REGISTRY_USERNAME not set"
    exit 1
fi

if [[ -z "${REGISTRY_PASSWORD}" ]]; then
    echo "REGISTRY_PASSWORD not set"
    exit 1
fi

dockerfiles=$(find -L . -iname "*Dockerfile" | sed 's|./||')

for dockerfile in $dockerfiles; do
    build_dir=$(dirname "${dockerfile}")
    image=${dockerfile%Dockerfile}
    base=${image%%\/*}
    echo
    echo "Building ${REPO}/${build_dir}:latest"
    docker build ${build_dir} -t ${REPO}/${build_dir}:latest
done
