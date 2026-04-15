#!/bin/bash
# ManyChat Subscriber Lookup
# Usage: ./mc-lookup.sh name "Search Name"    — search by display name
#        ./mc-lookup.sh id 12345678           — get info by subscriber ID

source "$(dirname "$0")/.env"

if [ -z "$MANYCHAT_API_KEY" ]; then
    echo "Error: MANYCHAT_API_KEY not set in .env"
    exit 1
fi

API="https://api.manychat.com/fb/subscriber"

case "$1" in
    name)
        shift
        SEARCH=$(python -c "import urllib.parse; print(urllib.parse.quote('$*'))")
        curl -s -H "Authorization: Bearer $MANYCHAT_API_KEY" "$API/findByName?name=$SEARCH" | python -c "
import sys, json
d = json.load(sys.stdin)
if not d.get('data'):
    print('No results found')
else:
    for s in d['data']:
        print(f\"Name: {s.get('name','?')}\")
        print(f\"IG: @{s.get('ig_username','?')}\")
        print(f\"ID: {s['id']}\")
        print(f\"Chat: {s.get('live_chat_url','')}\")
        print(f\"Last IG interaction: {s.get('ig_last_interaction','?')}\")
        print('---')
"
        ;;
    id)
        curl -s -H "Authorization: Bearer $MANYCHAT_API_KEY" "$API/getInfo?subscriber_id=$2" | python -c "
import sys, json
d = json.load(sys.stdin)
s = d.get('data', {})
if not s:
    print('Not found')
else:
    print(f\"Name: {s.get('name','?')}\")
    print(f\"IG: @{s.get('ig_username','?')}\")
    print(f\"ID: {s.get('id','?')}\")
    print(f\"Chat: {s.get('live_chat_url','')}\")
    print(f\"Last IG interaction: {s.get('ig_last_interaction','?')}\")
    print(f\"Email: {s.get('email','none')}\")
    print(f\"Phone: {s.get('phone','none')}\")
    tags = [t.get('name','') for t in s.get('tags',[])]
    if tags:
        print(f\"Tags: {', '.join(tags)}\")
"
        ;;
    *)
        echo "Usage:"
        echo "  ./mc-lookup.sh name \"Search Name\"    Search by display name"
        echo "  ./mc-lookup.sh id 12345678           Get info by subscriber ID"
        ;;
esac
