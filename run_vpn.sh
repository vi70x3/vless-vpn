#!/bin/bash

# Required environment variables for legacy compatibility
export ENABLE_DEPRECATED_LEGACY_DNS_SERVERS=true
export ENABLE_DEPRECATED_OUTBOUND_DNS_RULE_ITEM=true
export ENABLE_DEPRECATED_MISSING_DOMAIN_RESOLVER=true

if [ -z "$1" ]; then
    echo "Usage: $0 <subscription_url>"
    exit 1
fi

# Assuming vless-vpn is compiled in the same directory or available in path
# I'll use the path provided in your example
sudo -E /home/vi/vless-vpn/vless-vpn -sub "$1" -v
