#!/bin/sh -eu

/usr/bin/wrk $@ --latency | awk -f /root/latencies.awk
