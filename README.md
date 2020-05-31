# packer-dockerfile

simple ansible image with packer on top of it.

## This image allows you to work with packer image builder tool as well as ansible configuration tool for provisioning.

## Image description

- ansible layer from [this image](https://github.com/RaphaeldeGail/ansible-dockerfile)

- packer binary

## Build procedure

1. Builder container

   a. curl package installed

   b. download of packer pre-compiled binary

   c. unzip of the archive

1. Terraform container

   a. copy packer binary to PATH location
