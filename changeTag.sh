#!/bin/bash
sed "s/tagVersion/$1/g" netcore.yaml > netcore-deploy.yaml
