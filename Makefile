DEPLOYCTL := deno-deployctl
PROJECT := bencord0-denoweb

build:
	cargo build --release --target wasm32-unknown-unknown --target-dir ./target
	wasm-bindgen ./target/wasm32-unknown-unknown/release/denoweb.wasm --target deno --out-dir build/

deploy: build
	$(DEPLOYCTL) deploy --project $(PROJECT) src/index.ts --exclude ./target/

toolchain:
	rustup target add wasm32-unknown-unknown
	cargo install wasm-bindgen-cli

run: build
	deno run --allow-read --allow-net --allow-env src/index.ts

test:
	cargo test --target wasm32-unknown-unknown
	deno test --allow-read --allow-net --allow-env tests/integration.ts

.PHONY: build deploy toolchain run test
