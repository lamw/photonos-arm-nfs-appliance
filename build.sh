#!/bin/bash -x

echo "Building Photon OS ARM OVA Appliance ..."
rm -f output-vmware-iso/*.ova

echo "Applying packer build to photon.json ..."
packer build -var-file=photon-builder.json -var-file=photon-version.json photon.json

