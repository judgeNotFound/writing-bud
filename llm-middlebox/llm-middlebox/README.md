# llm-middlebox Module

Compile to wasm:

```bash
rustup target add wasm32-unknown-unknown # Required only once

cargo build --release --target wasm32-unknown-unknown
```

The result is contained in `./target/wasm32-unknown-unknown/release/llm_middlebox.wasm`.

