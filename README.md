# wasmdevcontainer
A simple devcontainer that can be used to build C/C++, Rust, and Go application code into Wasm binary files.

- Supported Languages:
  - C/C++
  - Rust
  - Go
- Unit Test Frameworks:
  - Cargo (Rust)
  - Gtests (C/C++)
  - Gmock (C/C++)

## **Building the wasmdevcontainer**
The following steps are required for building the `wasmdevcontainer`.

(1) Clone the `wasmdevcontainer` repo.

(2) Build the `wasmdevcontianer` with docker.
```
./build.sh
```

## **Running the wasmdevcontainer**
Running involves scripts that are located in `.devcontainer` directory for projects that utilize the `wasmdevcontainer`, e.g. the `wasmexample` project.  There are some soft links from the root of the project to the scripts in the `.devcontainer`` dir.

(1) Initialize devcontainer user volume (run just once per machine/workspace)
```
./initUserVolume.sh y
```

(2) Set up devcontainer user (run just once per user per machine/workspace)
```
./setupUser.sh -c
```
After this step, verify the `.devcontainer/devcontainer.json` exists in your project.

(3a) Run the `wasmdevcontainer` in a terminal.
```
./shell.sh
```

(3b) Or run the `wasmdevcontainer` in VSCode.
```
code .
# Then hit "Reopen in container"
```