#!/bin/bash
source_directory="/path/to/source/directory"
destination_archive="/path/to/destination/archive.tar.gz"

tar -czvf $destination_archive $source_directory
echo "Compression complete. Archive created at $destination_archive."

# This script will compress a directory into a tar.gz archive.