#!/bin/sh

kubectl run my-shell --image ghcr.io/revit13/airbyte-module-client:0.0.99 --image-pull-policy=Always -n default
kubectl wait pod --for=condition=ready my-shell -n default --timeout 10m
