#!/bin/sh
# This is a basic entrypoint script. You can add commands to initialize your container here.

# Start PocketBase
./pocketbase serve --dir /home/pocketbase/pb_data --http 0.0.0.0:8090
