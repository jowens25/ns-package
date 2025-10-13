#!/bin/bash
set -e

# Generate Packages file
apt-ftparchive packages pool/ > dists/focal/main/binary-amd64/Packages

# Generate compressed Packages file
gzip -k dists/focal/main/binary-amd64/Packages

# Generate Release file
apt-ftparchive release dists/focal/ > dists/focal/Release

echo "Repository metadata updated successfully"