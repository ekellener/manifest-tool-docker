#!/bin/bash

./manifest-tool --username=$docker_username --password=$docker_password push from-args --platforms $manifest_platforms --template $manifest_template --target $manifest_target
