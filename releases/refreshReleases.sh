#!/bin/bash

aria2c -x 15 -j 15 --auto-file-renaming=false -d . https://bosh.io/d/stemcells/bosh-warden-boshlite-ubuntu-trusty-go_agent
aria2c -x 15 -j 15 --auto-file-renaming=false -d . http://bosh.io/d/github.com/cloudfoundry/cflinuxfs2-rootfs-release
aria2c -x 15 -j 15 --auto-file-renaming=false -d . http://bosh.io/d/github.com/cloudfoundry/cf-mysql-release
aria2c -x 15 -j 15 --auto-file-renaming=false -d . http://bosh.io/d/github.com/cloudfoundry-incubator/etcd-release
aria2c -x 15 -j 15 --auto-file-renaming=false -d . http://bosh.io/d/github.com/cloudfoundry/garden-runc-release


