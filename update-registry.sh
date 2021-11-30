#!/bin/bash

echo "Creating zip-files"
cd docs
helm package ../charts/apimap-api
helm package ../charts/apimap-portal
helm repo index . --url https://apimap.github.io/helm-charts/
