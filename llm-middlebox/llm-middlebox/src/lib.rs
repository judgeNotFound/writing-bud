use wasm_minimal_protocol::*;

initiate_protocol!();

#[wasm_func]
pub fn help(arg: &[u8]) -> Vec<u8> {
    arg.to_vec()
}

