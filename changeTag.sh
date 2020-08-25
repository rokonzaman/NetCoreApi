#!/bin/bash
sed "s/tagVersion/$1/g" netcore.yaml > django-deploy.yaml
