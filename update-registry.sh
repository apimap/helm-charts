#!/bin/bash

echo "Creating zip-files"
cd docs
helm package ../charts/apimap-api
helm package ../charts/apimap-portal
helm package ../charts/apimap-developer
helm repo index . --url https://apimap.github.io/helm-charts/
