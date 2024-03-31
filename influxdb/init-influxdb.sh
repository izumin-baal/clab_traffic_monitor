#!/bin/bash

influx -username $CLABTMON_USERNAME -password $CLABTMON_PASSWORD  -execute "CREATE RETENTION POLICY policy_3d ON clabtmon DURATION 2d REPLICATION 1 DEFAULT"