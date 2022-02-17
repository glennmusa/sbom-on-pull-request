#!/bin/bash

only_manifest_files=(
    _manifest/manifest.json
    _manifest/manifest.json.sha256
    _manifest/spdx_2.2/manifest.spdx.json
    _manifest/spdx_2.2/manifest.spdx.json.sha256
)

last_diff=( $(git diff --name-only --pretty="" HEAD HEAD~1) )

if [[ "${last_diff[*]}" == "${only_manifest_files[*]}" ]]; then
    echo "These changes are just the manifest files. Exiting code 0."
    exit 0
fi
