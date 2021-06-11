#!/bin/bash

oc -n istio-system patch --type='json' smmr default -p '[{"op": "add", "path": "/spec/members", "value":["'"open5gcore"'"]}]'

oc ns open5gcore
oc adm policy add-scc-to-user privileged -z default -n open5gcore

oc ns open5gran
oc adm policy add-scc-to-user privileged -z default -n open5gran