# Deno web

# Setup

## Install `deployctl`

$ deno install --name 'deno-deployctl' --allow-read --allow-write --allow-env --allow-net --allow-run --no-check -r -f https://deno.land/x/deploy/deployctl.ts
$ export PATH="${HOME}/.deno/bin:$PATH"

## Install toolchain

$ make toolchain

# Build locally

$ make build

# Run locally

$ make run

# Run on deno

$ make depoly

Then visit the staged version or promote it to https://bencord0-denoweb.deno.dev
