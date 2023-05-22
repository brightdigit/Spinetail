#!/bin/bash
#
# Regenerates the committed swift-openapi-generator output for Spinetail.
#
# `swift-openapi-generator generate` honors the `filter:` key in the config
# file (openapi-generator-config.yaml), so it prunes the full Mailchimp
# Marketing API spec (OpenAPI/openapi.yaml) down to only the operations
# ContributeMailchimp uses and generates Types.swift / Client.swift in a single
# pass into Sources/SpinetailOpenAPI/ (committed). No build/command plugin.
#
# The generator CLI is provided by mise (see .mise.toml). This script is
# reproducible: running it should produce no diff unless the spec, config, or
# generator version changed.
set -euo pipefail

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
PACKAGE_DIR="${SCRIPT_DIR}/.."
OUTPUT_DIR="${PACKAGE_DIR}/Sources/SpinetailOpenAPI"
CONFIG="${OUTPUT_DIR}/openapi-generator-config.yaml"
FULL_SPEC="${PACKAGE_DIR}/OpenAPI/openapi.yaml"

# Resolve mise so the pinned generator CLI is on PATH.
MISE_BIN=""
for mise_path in /opt/homebrew/bin/mise /usr/local/bin/mise "$HOME/.local/bin/mise"; do
	if [ -x "$mise_path" ]; then
		MISE_BIN="$mise_path"
		break
	fi
done
if [ -z "$MISE_BIN" ] && command -v mise &>/dev/null; then
	MISE_BIN="mise"
fi
if [ -z "$MISE_BIN" ]; then
	echo "Error: mise is not installed (see https://mise.jdx.dev)"
	exit 1
fi

GEN="$MISE_BIN exec -- swift-openapi-generator"

echo "Installing pinned tools via mise..."
"$MISE_BIN" install

echo "Generating Types.swift / Client.swift -> ${OUTPUT_DIR}"
$GEN generate \
	--config "$CONFIG" \
	--output-directory "$OUTPUT_DIR" \
	"$FULL_SPEC"

echo "Generation complete."
